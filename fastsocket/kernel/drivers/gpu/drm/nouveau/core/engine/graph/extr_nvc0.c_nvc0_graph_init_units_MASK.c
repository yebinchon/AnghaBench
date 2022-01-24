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
struct nvc0_graph_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvc0_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvc0_graph_priv *priv)
{
	FUNC1(priv, 0x409c24, 0x000f0000);
	FUNC1(priv, 0x404000, 0xc0000000); /* DISPATCH */
	FUNC1(priv, 0x404600, 0xc0000000); /* M2MF */
	FUNC1(priv, 0x408030, 0xc0000000);
	FUNC1(priv, 0x40601c, 0xc0000000);
	FUNC1(priv, 0x404490, 0xc0000000); /* MACRO */
	FUNC1(priv, 0x406018, 0xc0000000);
	FUNC1(priv, 0x405840, 0xc0000000);
	FUNC1(priv, 0x405844, 0x00ffffff);
	FUNC0(priv, 0x419cc0, 0x00000008, 0x00000008);
	FUNC0(priv, 0x419eb4, 0x00001000, 0x00001000);
}