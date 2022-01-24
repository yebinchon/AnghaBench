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
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_instmem*,int) ; 

int
FUNC1(struct nouveau_object *object, bool suspend)
{
	struct nouveau_instmem *imem = (void *)object;
	return FUNC0(imem, suspend);
}