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
struct nvc0_graph_priv {int rop_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct nvc0_graph_priv *priv)
{
	int rop;

	for (rop = 0; rop < priv->rop_nr; rop++) {
		FUNC1(priv, FUNC0(rop, 0x144), 0xc0000000);
		FUNC1(priv, FUNC0(rop, 0x070), 0xc0000000);
		FUNC1(priv, FUNC0(rop, 0x204), 0xffffffff);
		FUNC1(priv, FUNC0(rop, 0x208), 0xffffffff);
	}
}