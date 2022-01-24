#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int value_length; scalar_t__ path_length; } ;
typedef  TYPE_1__ diva_man_var_header_t ;
typedef  char byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2  (diva_man_var_header_t* pVar, int* var) {
	byte* ptr = (char*)&pVar->path_length;
	int value;

	ptr += (pVar->path_length + 1);

	switch (pVar->value_length) {
		case 1:
			value = *(char*)ptr;
			break;

		case 2:
			value = (short)FUNC1(ptr);
			break;

		case 4:
			value = (int)FUNC0(ptr);
			break;

		default:
			return (-1);
	}

	*var = value;

	return (0);
}