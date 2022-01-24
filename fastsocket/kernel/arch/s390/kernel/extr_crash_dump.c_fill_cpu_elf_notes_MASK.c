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
struct save_area_s390x {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*,struct save_area_s390x*) ; 
 void* FUNC1 (void*,struct save_area_s390x*) ; 
 void* FUNC2 (void*,struct save_area_s390x*) ; 
 void* FUNC3 (void*,struct save_area_s390x*) ; 
 void* FUNC4 (void*,struct save_area_s390x*) ; 
 void* FUNC5 (void*,struct save_area_s390x*) ; 
 void* FUNC6 (void*,struct save_area_s390x*) ; 

void *FUNC7(void *ptr, struct save_area_s390x *sa)
{
	ptr = FUNC1(ptr, sa);
	ptr = FUNC0(ptr, sa);
	ptr = FUNC4(ptr, sa);
	ptr = FUNC5(ptr, sa);
	ptr = FUNC6(ptr, sa);
	ptr = FUNC2(ptr, sa);
	ptr = FUNC3(ptr, sa);
	return ptr;
}