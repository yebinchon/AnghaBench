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
typedef  int word ;
typedef  int dword ;
struct TYPE_3__ {int value_length; scalar_t__ path_length; } ;
typedef  TYPE_1__ diva_man_var_header_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static int FUNC2 (diva_man_var_header_t* pVar, dword* var) {
	byte* ptr = (char*)&pVar->path_length;
	dword value;

	ptr += (pVar->path_length + 1);

	switch (pVar->value_length) {
		case 1:
			value = (byte)(*ptr);
			break;

		case 2:
			value = (word)FUNC1(ptr);
			break;

		case 3:
			value  = (dword)FUNC0(ptr);
			value &= 0x00ffffff;
			break;

		case 4:
			value = (dword)FUNC0(ptr);
			break;

		default:
			return (-1);
	}

	*var = value;

	return (0);
}