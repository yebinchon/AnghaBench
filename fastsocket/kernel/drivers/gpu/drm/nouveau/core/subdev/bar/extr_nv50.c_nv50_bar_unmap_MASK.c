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
struct nouveau_vma {int dummy; } ;
struct nouveau_bar {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bar*) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_bar *bar, struct nouveau_vma *vma)
{
	FUNC1(vma);
	FUNC2(FUNC3(bar), 6);
	FUNC0(vma);
}