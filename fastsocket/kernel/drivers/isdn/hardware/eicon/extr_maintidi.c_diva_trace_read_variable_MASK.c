#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dword ;
typedef  int /*<<< orphan*/  diva_trace_ie_t ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_1__ diva_man_var_header_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (diva_man_var_header_t* pVar,
																		 void* variable) {
	switch (pVar->type) {
		case 0x03: /* MI_ASCIIZ - syting                               */
			return (FUNC1  (pVar, (char*)variable));
		case 0x04: /* MI_ASCII  - string                               */
			return (FUNC0  (pVar, (char*)variable));
		case 0x05: /* MI_NUMBER - counted sequence of bytes            */
			return (FUNC2  (pVar, (diva_trace_ie_t*)variable));
		case 0x81: /* MI_INT    - signed integer                       */
			return (FUNC3 (pVar, (int*)variable));
		case 0x82: /* MI_UINT   - unsigned integer                     */
			return (FUNC4 (pVar, (dword*)variable));
		case 0x83: /* MI_HINT   - unsigned integer, hex representetion */
			return (FUNC4 (pVar, (dword*)variable));
		case 0x87: /* MI_BITFLD - unsigned integer, bit representation */
			return (FUNC4 (pVar, (dword*)variable));
	}

	/*
		This type of variable is not handled, indicate error
		Or one problem in management interface, or in application recodeing
		table, or this application should handle it.
		*/
	return (-1);
}