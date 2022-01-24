#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int NV04_PGRAPH_FIFO ; 
 int FUNC1 (int,int) ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int FUNC2 (int) ; 
 int NV10_PGRAPH_CTX_USER ; 
 int NV10_PGRAPH_FFINTFC_FIFO_PTR ; 
 int NV10_PGRAPH_FFINTFC_ST2 ; 
 int NV10_PGRAPH_FFINTFC_ST2_DH ; 
 int NV10_PGRAPH_FFINTFC_ST2_DL ; 
 struct nv10_graph_priv* FUNC3 (struct nv10_graph_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv10_graph_priv*,int,int,int) ; 
 int FUNC5 (struct nv10_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_graph_priv*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct nv10_graph_chan *chan, int chid, u32 inst)
{
	struct nv10_graph_priv *priv = FUNC3(chan);
	u32 st2, st2_dl, st2_dh, fifo_ptr, fifo[0x60/4];
	u32 ctx_user, ctx_switch[5];
	int i, subchan = -1;

	/* NV10TCL_DMA_VTXBUF (method 0x18c) modifies hidden state
	 * that cannot be restored via MMIO. Do it through the FIFO
	 * instead.
	 */

	/* Look for a celsius object */
	for (i = 0; i < 8; i++) {
		int class = FUNC5(priv, FUNC1(i, 0)) & 0xfff;

		if (class == 0x56 || class == 0x96 || class == 0x99) {
			subchan = i;
			break;
		}
	}

	if (subchan < 0 || !inst)
		return;

	/* Save the current ctx object */
	ctx_user = FUNC5(priv, NV10_PGRAPH_CTX_USER);
	for (i = 0; i < 5; i++)
		ctx_switch[i] = FUNC5(priv, FUNC2(i));

	/* Save the FIFO state */
	st2 = FUNC5(priv, NV10_PGRAPH_FFINTFC_ST2);
	st2_dl = FUNC5(priv, NV10_PGRAPH_FFINTFC_ST2_DL);
	st2_dh = FUNC5(priv, NV10_PGRAPH_FFINTFC_ST2_DH);
	fifo_ptr = FUNC5(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR);

	for (i = 0; i < FUNC0(fifo); i++)
		fifo[i] = FUNC5(priv, 0x4007a0 + 4 * i);

	/* Switch to the celsius subchannel */
	for (i = 0; i < 5; i++)
		FUNC6(priv, FUNC2(i),
			FUNC5(priv, FUNC1(subchan, i)));
	FUNC4(priv, NV10_PGRAPH_CTX_USER, 0xe000, subchan << 13);

	/* Inject NV10TCL_DMA_VTXBUF */
	FUNC6(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR, 0);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2,
		0x2c000000 | chid << 20 | subchan << 16 | 0x18c);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2_DL, inst);
	FUNC4(priv, NV10_PGRAPH_CTX_CONTROL, 0, 0x10000);
	FUNC4(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
	FUNC4(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);

	/* Restore the FIFO state */
	for (i = 0; i < FUNC0(fifo); i++)
		FUNC6(priv, 0x4007a0 + 4 * i, fifo[i]);

	FUNC6(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR, fifo_ptr);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2, st2);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2_DL, st2_dl);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2_DH, st2_dh);

	/* Restore the current ctx object */
	for (i = 0; i < 5; i++)
		FUNC6(priv, FUNC2(i), ctx_switch[i]);
	FUNC6(priv, NV10_PGRAPH_CTX_USER, ctx_user);
}