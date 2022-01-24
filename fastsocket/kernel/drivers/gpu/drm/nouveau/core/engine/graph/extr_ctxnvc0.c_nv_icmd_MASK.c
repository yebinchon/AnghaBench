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
typedef  int /*<<< orphan*/  u32 ;
struct nvc0_graph_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvc0_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int,int /*<<< orphan*/ ) ; 

void
FUNC2(struct nvc0_graph_priv *priv, u32 icmd, u32 data)
{
	FUNC1(priv, 0x400204, data);
	FUNC1(priv, 0x400200, icmd);
	while (FUNC0(priv, 0x400700) & 2) {}
}