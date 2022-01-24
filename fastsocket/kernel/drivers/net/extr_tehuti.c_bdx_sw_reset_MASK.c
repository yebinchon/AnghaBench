#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bdx_priv {TYPE_1__* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bdx_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TXF_WPTR_WR_PTR ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int regDIS_PORT ; 
 int regDIS_QU ; 
 int regGMAC_RXF_A ; 
 int regIMR ; 
 int regISR ; 
 int regRDINTCM0 ; 
 int regRST_PORT ; 
 int regRST_QU ; 
 int regTDINTCM0 ; 
 int regTXD_WPTR_0 ; 
 int regTXF_RPTR_3 ; 

__attribute__((used)) static int FUNC6(struct bdx_priv *priv)
{
	int i;

	ENTER;
	/* 1. load MAC (obsolete) */
	/* 2. disable Rx (and Tx) */
	FUNC4(priv, regGMAC_RXF_A, 0);
	FUNC5(100);
	/* 3. disable port */
	FUNC4(priv, regDIS_PORT, 1);
	/* 4. disable queue */
	FUNC4(priv, regDIS_QU, 1);
	/* 5. wait until hw is disabled */
	for (i = 0; i < 50; i++) {
		if (FUNC2(priv, regRST_PORT) & 1)
			break;
		FUNC5(10);
	}
	if (i == 50)
		FUNC1("%s: SW reset timeout. continuing anyway\n",
		    priv->ndev->name);

	/* 6. disable intrs */
	FUNC4(priv, regRDINTCM0, 0);
	FUNC4(priv, regTDINTCM0, 0);
	FUNC4(priv, regIMR, 0);
	FUNC2(priv, regISR);

	/* 7. reset queue */
	FUNC4(priv, regRST_QU, 1);
	/* 8. reset port */
	FUNC4(priv, regRST_PORT, 1);
	/* 9. zero all read and write pointers */
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC0("%x = %x\n", i, FUNC2(priv, i) & TXF_WPTR_WR_PTR);
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC4(priv, i, 0);
	/* 10. unseet port disable */
	FUNC4(priv, regDIS_PORT, 0);
	/* 11. unset queue disable */
	FUNC4(priv, regDIS_QU, 0);
	/* 12. unset queue reset */
	FUNC4(priv, regRST_QU, 0);
	/* 13. unset port reset */
	FUNC4(priv, regRST_PORT, 0);
	/* 14. enable Rx */
	/* skiped. will be done later */
	/* 15. save MAC (obsolete) */
	for (i = regTXD_WPTR_0; i <= regTXF_RPTR_3; i += 0x10)
		FUNC0("%x = %x\n", i, FUNC2(priv, i) & TXF_WPTR_WR_PTR);

	FUNC3(0);
}