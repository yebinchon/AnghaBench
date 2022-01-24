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
struct nouveau_fb_tile {scalar_t__ zcomp; scalar_t__ pitch; scalar_t__ limit; scalar_t__ addr; } ;
struct nouveau_fb {int dummy; } ;

/* Variables and functions */

void
FUNC0(struct nouveau_fb *pfb, int i, struct nouveau_fb_tile *tile)
{
	tile->addr  = 0;
	tile->limit = 0;
	tile->pitch = 0;
	tile->zcomp = 0;
}