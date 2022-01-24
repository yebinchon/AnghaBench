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

__attribute__((used)) static int
FUNC2(struct nouveau_object *object, u32 mthd,
			    void *args, u32 size)
{
	switch (FUNC0(object, args, size)) {
	case 0x30:
		FUNC1(object, 0x1000, 0);
		return 0;
	/* Yes, for some reason even the old versions of objects
	 * accept 0x57 and not 0x17. Consistency be damned.
	 */
	case 0x57:
		FUNC1(object, 0x1000, 0x1000);
		return 0;
	}
	return 1;
}