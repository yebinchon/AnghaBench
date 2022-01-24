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
struct nv50_disp_priv {int dummy; } ;
struct dcb_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_disp_priv*,int,int,int,struct dcb_output*) ; 
 int FUNC1 (struct nv50_disp_priv*,int) ; 

__attribute__((used)) static void
FUNC2(struct nv50_disp_priv *priv, int head)
{
	struct dcb_output outp;
	u32 pclk = FUNC1(priv, 0x660450 + (head * 0x300)) / 1000;
	FUNC0(priv, head, 1, pclk, &outp);
}