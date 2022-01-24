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
typedef  int /*<<< orphan*/  u16 ;
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;

/* Variables and functions */
 struct nouveau_instmem* FUNC0 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_instmem*,int) ; 

__attribute__((used)) static u16
FUNC2(struct nouveau_object *object, u32 *args, u32 size)
{
	struct nouveau_instmem *imem = FUNC0(object);
	u32 inst = *(u32 *)args << 4;
	return FUNC1(imem, inst);
}