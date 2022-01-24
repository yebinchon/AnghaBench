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
struct nvc0_graph_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvc0_graph_priv*,char*,...) ; 
 int FUNC1 (struct nvc0_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_graph_priv*) ; 

__attribute__((used)) static void
FUNC4(struct nvc0_graph_priv *priv)
{
	u32 ustat = FUNC1(priv, 0x409c18);

	if (ustat & 0x00000001)
		FUNC0(priv, "CTXCTRL ucode error\n");
	if (ustat & 0x00080000)
		FUNC0(priv, "CTXCTRL watchdog timeout\n");
	if (ustat & ~0x00080001)
		FUNC0(priv, "CTXCTRL 0x%08x\n", ustat);

	FUNC3(priv);
	FUNC2(priv, 0x409c20, ustat);
}