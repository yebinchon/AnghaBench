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
struct nv30_fb_priv {int dummy; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct nv30_fb_priv*) ; 
 int FUNC1 (struct nv30_fb_priv*,int) ; 

__attribute__((used)) static int
FUNC2(struct nv30_fb_priv *priv, int k, int i, int j)
{
	struct nouveau_device *device = FUNC0(priv);
	int b = (device->chipset > 0x30 ?
		 FUNC1(priv, 0x122c + 0x10 * k + 0x4 * j) >> (4 * (i ^ 1)) :
		 0) & 0xf;

	return 2 * (b & 0x8 ? b - 0x10 : b);
}