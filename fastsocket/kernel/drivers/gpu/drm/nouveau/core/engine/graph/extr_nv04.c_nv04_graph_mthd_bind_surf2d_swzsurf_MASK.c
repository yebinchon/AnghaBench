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
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *object, u32 mthd,
				    void *args, u32 size)
{
	switch (FUNC0(object, args, size)) {
	case 0x30:
		FUNC1(object, 0x00004000, 0);
		FUNC2(object, 0x02000000, 0);
		return 0;
	case 0x42:
		FUNC1(object, 0x00004000, 0);
		FUNC2(object, 0x02000000, 0x02000000);
		return 0;
	case 0x52:
		FUNC1(object, 0x00004000, 0x00004000);
		FUNC2(object, 0x02000000, 0x02000000);
		return 0;
	}
	return 1;
}