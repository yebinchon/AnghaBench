#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvc0_graph_priv {TYPE_1__* unk4188b8; TYPE_2__* unk4188b4; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct nvc0_graph_priv *priv)
{
	int i;

	FUNC1(priv, FUNC0(0x0880), 0x00000000);
	FUNC1(priv, FUNC0(0x08a4), 0x00000000);
	for (i = 0; i < 4; i++)
		FUNC1(priv, FUNC0(0x0888) + (i * 4), 0x00000000);
	FUNC1(priv, FUNC0(0x08b4), priv->unk4188b4->addr >> 8);
	FUNC1(priv, FUNC0(0x08b8), priv->unk4188b8->addr >> 8);
}