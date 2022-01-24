#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ symbol_t ;
typedef  int /*<<< orphan*/  stored_ptr ;
typedef  int /*<<< orphan*/  new_symbol ;
struct TYPE_19__ {int (* get ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ;scalar_t__ (* put ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {int size; TYPE_1__** data; } ;
typedef  TYPE_2__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char*) ; 
 TYPE_4__* symtable ; 

symbol_t *
FUNC8(char *name)
{
	symbol_t *stored_ptr;
	DBT	  key;
	DBT	  data;
	int	  retval;

	key.data = (void *)name;
	key.size = FUNC3(name);

	if ((retval = symtable->get(symtable, &key, &data, /*flags*/0)) != 0) {
		if (retval == -1) {
			FUNC2("Symbol table get operation failed");
			FUNC0(EX_SOFTWARE);
			/* NOTREACHED */
		} else if (retval == 1) {
			/* Symbol wasn't found, so create a new one */
			symbol_t *new_symbol;

			new_symbol = FUNC7(name);
			data.data = &new_symbol;
			data.size = sizeof(new_symbol);
			if (symtable->put(symtable, &key, &data,
					  /*flags*/0) !=0) {
				FUNC2("Symtable put failed");
				FUNC0(EX_SOFTWARE);
			}
			return (new_symbol);
		} else {
			FUNC2("Unexpected return value from db get routine");
			FUNC0(EX_SOFTWARE);
			/* NOTREACHED */
		}
	}
	FUNC1(&stored_ptr, data.data, sizeof(stored_ptr));
	stored_ptr->count++;
	data.data = &stored_ptr;
	if (symtable->put(symtable, &key, &data, /*flags*/0) !=0) {
		FUNC2("Symtable put failed");
		FUNC0(EX_SOFTWARE);
	}
	return (stored_ptr);
}