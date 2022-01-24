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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct nvc0_grctx {int dummy; } ;
struct nvc0_graph_priv {int gpc_nr; int* tpc_nr; int tpc_total; int magic_not_rop_nr; } ;

/* Variables and functions */
 int GPC_MAX ; 
 int FUNC0 (int,int) ; 
 int NV_MEM_ACCESS_RW ; 
 int NV_MEM_ACCESS_SYS ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvc0_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_graph_priv*,int,int) ; 
 int FUNC7 (struct nvc0_grctx*) ; 
 int FUNC8 (struct nvc0_graph_priv*,struct nvc0_grctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC22 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC25 (struct nvc0_graph_priv*) ; 

int
FUNC26(struct nvc0_graph_priv *priv)
{
	struct nvc0_grctx info;
	int ret, i, gpc, tpc, id;
	u32 data[6] = {}, data2[2] = {}, tmp;
	u32 tpc_set = 0, tpc_mask = 0;
	u32 magic[GPC_MAX][2], offset;
	u8 tpcnr[GPC_MAX], a, b;
	u8 shift, ntpcv;

	ret = FUNC8(priv, &info);
	if (ret)
		return ret;

	FUNC5(priv, 0x000260, 0x00000001, 0x00000000);
	FUNC6(priv, 0x400204, 0x00000000);
	FUNC6(priv, 0x400208, 0x00000000);

	FUNC12(priv);
	FUNC13(priv);
	FUNC14(priv);
	FUNC15(priv);
	FUNC16(priv);
	FUNC17(priv);
	FUNC18(priv);
	FUNC19(priv);
	FUNC20(priv);
	FUNC21(priv);
	FUNC22(priv);
	FUNC9(priv);
	FUNC10(priv);
	FUNC11(priv);

	FUNC6(priv, 0x404154, 0x0);

	FUNC3(0x003000, 0x0100, NV_MEM_ACCESS_RW | NV_MEM_ACCESS_SYS);
	FUNC3(0x008000, 0x0100, NV_MEM_ACCESS_RW | NV_MEM_ACCESS_SYS);
	FUNC3(0x060000, 0x1000, NV_MEM_ACCESS_RW);
	FUNC4(0x40800c, 0x00000000,  8, 1);
	FUNC4(0x408010, 0x80000000,  0, 0);
	FUNC4(0x419004, 0x00000000,  8, 1);
	FUNC4(0x419008, 0x00000000,  0, 0);
	FUNC4(0x4064cc, 0x80000000,  0, 0);
	FUNC4(0x408004, 0x00000000,  8, 0);
	FUNC4(0x408008, 0x80000030,  0, 0);
	FUNC4(0x418808, 0x00000000,  8, 0);
	FUNC4(0x41880c, 0x80000030,  0, 0);
	FUNC4(0x4064c8, 0x01800600,  0, 0);
	FUNC4(0x418810, 0x80000000, 12, 2);
	FUNC4(0x419848, 0x10000000, 12, 2);
	FUNC4(0x405830, 0x02180648,  0, 0);
	FUNC4(0x4064c4, 0x0192ffff,  0, 0);
	for (gpc = 0, offset = 0; gpc < priv->gpc_nr; gpc++) {
		u16 magic0 = 0x0218 * priv->tpc_nr[gpc];
		u16 magic1 = 0x0648 * priv->tpc_nr[gpc];
		magic[gpc][0]  = 0x10000000 | (magic0 << 16) | offset;
		magic[gpc][1]  = 0x00000000 | (magic1 << 16);
		offset += 0x0324 * priv->tpc_nr[gpc];
	}
	for (gpc = 0; gpc < priv->gpc_nr; gpc++) {
		FUNC4(FUNC0(gpc, 0x30c0), magic[gpc][0], 0, 0);
		FUNC4(FUNC0(gpc, 0x30e4), magic[gpc][1] | offset, 0, 0);
		offset += 0x07ff * priv->tpc_nr[gpc];
	}
	FUNC4(0x17e91c, 0x06060609, 0, 0);
	FUNC4(0x17e920, 0x00090a05, 0, 0);

	FUNC6(priv, 0x418c6c, 0x1);
	FUNC6(priv, 0x41980c, 0x10);
	FUNC6(priv, 0x41be08, 0x4);
	FUNC6(priv, 0x4064c0, 0x801a00f0);
	FUNC6(priv, 0x405800, 0xf8000bf);
	FUNC6(priv, 0x419c00, 0xa);

	for (tpc = 0, id = 0; tpc < 4; tpc++) {
		for (gpc = 0; gpc < priv->gpc_nr; gpc++) {
			if (tpc < priv->tpc_nr[gpc]) {
				FUNC6(priv, FUNC1(gpc, tpc, 0x0698), id);
				FUNC6(priv, FUNC1(gpc, tpc, 0x04e8), id);
				FUNC6(priv, FUNC0(gpc, 0x0c10 + tpc * 4), id);
				FUNC6(priv, FUNC1(gpc, tpc, 0x0088), id++);
			}

			FUNC6(priv, FUNC0(gpc, 0x0c08), priv->tpc_nr[gpc]);
			FUNC6(priv, FUNC0(gpc, 0x0c8c), priv->tpc_nr[gpc]);
		}
	}

	tmp = 0;
	for (i = 0; i < priv->gpc_nr; i++)
		tmp |= priv->tpc_nr[i] << (i * 4);
	FUNC6(priv, 0x406028, tmp);
	FUNC6(priv, 0x405870, tmp);

	FUNC6(priv, 0x40602c, 0x0);
	FUNC6(priv, 0x405874, 0x0);
	FUNC6(priv, 0x406030, 0x0);
	FUNC6(priv, 0x405878, 0x0);
	FUNC6(priv, 0x406034, 0x0);
	FUNC6(priv, 0x40587c, 0x0);

	/* calculate first set of magics */
	FUNC2(tpcnr, priv->tpc_nr, sizeof(priv->tpc_nr));

	gpc = -1;
	for (tpc = 0; tpc < priv->tpc_total; tpc++) {
		do {
			gpc = (gpc + 1) % priv->gpc_nr;
		} while (!tpcnr[gpc]);
		tpcnr[gpc]--;

		data[tpc / 6] |= gpc << ((tpc % 6) * 5);
	}

	for (; tpc < 32; tpc++)
		data[tpc / 6] |= 7 << ((tpc % 6) * 5);

	/* and the second... */
	shift = 0;
	ntpcv = priv->tpc_total;
	while (!(ntpcv & (1 << 4))) {
		ntpcv <<= 1;
		shift++;
	}

	data2[0]  = ntpcv << 16;
	data2[0] |= shift << 21;
	data2[0] |= (((1 << (0 + 5)) % ntpcv) << 24);
	data2[0] |= priv->tpc_total << 8;
	data2[0] |= priv->magic_not_rop_nr;
	for (i = 1; i < 7; i++)
		data2[1] |= ((1 << (i + 5)) % ntpcv) << ((i - 1) * 5);

	/* and write it all the various parts of PGRAPH */
	FUNC6(priv, 0x418bb8, (priv->tpc_total << 8) | priv->magic_not_rop_nr);
	for (i = 0; i < 6; i++)
		FUNC6(priv, 0x418b08 + (i * 4), data[i]);

	FUNC6(priv, 0x41bfd0, data2[0]);
	FUNC6(priv, 0x41bfe4, data2[1]);
	for (i = 0; i < 6; i++)
		FUNC6(priv, 0x41bf00 + (i * 4), data[i]);

	FUNC6(priv, 0x4078bc, (priv->tpc_total << 8) | priv->magic_not_rop_nr);
	for (i = 0; i < 6; i++)
		FUNC6(priv, 0x40780c + (i * 4), data[i]);


	FUNC2(tpcnr, priv->tpc_nr, sizeof(priv->tpc_nr));
	for (gpc = 0; gpc < priv->gpc_nr; gpc++)
		tpc_mask |= ((1 << priv->tpc_nr[gpc]) - 1) << (gpc * 8);

	for (i = 0, gpc = -1, b = -1; i < 32; i++) {
		a = (i * (priv->tpc_total - 1)) / 32;
		if (a != b) {
			b = a;
			do {
				gpc = (gpc + 1) % priv->gpc_nr;
			} while (!tpcnr[gpc]);
			tpc = priv->tpc_nr[gpc] - tpcnr[gpc]--;

			tpc_set |= 1 << ((gpc * 8) + tpc);
		}

		FUNC6(priv, 0x406800 + (i * 0x20), tpc_set);
		FUNC6(priv, 0x406c00 + (i * 0x20), tpc_set ^ tpc_mask);
	}

	for (i = 0; i < 8; i++)
		FUNC6(priv, 0x4064d0 + (i * 0x04), 0x00000000);

	FUNC6(priv, 0x405b00, 0x201);
	FUNC6(priv, 0x408850, 0x2);
	FUNC6(priv, 0x408958, 0x2);
	FUNC6(priv, 0x419f78, 0xa);

	FUNC25(priv);
	FUNC24(priv);
	FUNC23(priv);

	FUNC5(priv, 0x000260, 0x00000001, 0x00000001);
	FUNC6(priv, 0x418800, 0x7026860a); //XXX
	FUNC6(priv, 0x41be10, 0x00bb8bc7); //XXX
	return FUNC7(&info);
}