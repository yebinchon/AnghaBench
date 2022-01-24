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
struct nv50_disp_base {int /*<<< orphan*/  ramht; } ;
struct nouveau_object {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct nouveau_object *parent, int cookie)
{
	struct nv50_disp_base *base = (void *)parent->parent;
	FUNC0(base->ramht, cookie);
}