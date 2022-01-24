#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path_length; } ;
typedef  TYPE_1__ diva_man_var_header_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static diva_man_var_header_t* FUNC2 (diva_man_var_header_t* pVar,
																				const char* name) {
	const char* path;

	do {
		path = (char*)&pVar->path_length+1;

		if (!FUNC1 (name, path, pVar->path_length)) {
			break;
		}
	} while ((pVar = FUNC0 (pVar)));

	return (pVar);
}