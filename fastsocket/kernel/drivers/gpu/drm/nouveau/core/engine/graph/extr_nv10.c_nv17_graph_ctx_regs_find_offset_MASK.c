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
struct nv10_graph_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* nv17_graph_ctx_regs ; 
 int /*<<< orphan*/  FUNC1 (struct nv10_graph_priv*,char*,int) ; 

__attribute__((used)) static int
FUNC2(struct nv10_graph_priv *priv, int reg)
{
	int i;
	for (i = 0; i < FUNC0(nv17_graph_ctx_regs); i++) {
		if (nv17_graph_ctx_regs[i] == reg)
			return i;
	}
	FUNC1(priv, "unknow offset nv17_ctx_regs %d\n", reg);
	return -1;
}