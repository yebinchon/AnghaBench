#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* linfo; TYPE_2__* cinfo; TYPE_2__* finfo; TYPE_2__* ainfo; TYPE_2__* rinfo; } ;
struct TYPE_11__ {int type; struct TYPE_11__* name; TYPE_1__ info; int /*<<< orphan*/  symrefs; } ;
typedef  TYPE_2__ symbol_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* del ) (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  size; TYPE_2__* data; } ;
typedef  TYPE_3__ DBT ;

/* Variables and functions */
#define  ALIAS 139 
#define  CONST 138 
#define  DOWNLOAD_CONST 137 
#define  ENUM 136 
#define  ENUM_ENTRY 135 
#define  FIELD 134 
#define  LABEL 133 
#define  MASK 132 
#define  REGISTER 131 
#define  SCBLOC 130 
#define  SRAMLOC 129 
#define  UNINITIALIZED 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* symtable ; 

void
FUNC4(symbol_t *symbol)
{
	if (symtable != NULL) {
		DBT	 key;

		key.data = symbol->name;
		key.size = FUNC1(symbol->name);
		symtable->del(symtable, &key, /*flags*/0);
	}
	switch(symbol->type) {
	case SCBLOC:
	case SRAMLOC:
	case REGISTER:
		if (symbol->info.rinfo != NULL)
			FUNC0(symbol->info.rinfo);
		break;
	case ALIAS:
		if (symbol->info.ainfo != NULL)
			FUNC0(symbol->info.ainfo);
		break;
	case MASK:
	case FIELD:
	case ENUM:
	case ENUM_ENTRY:
		if (symbol->info.finfo != NULL) {
			FUNC3(&symbol->info.finfo->symrefs);
			FUNC0(symbol->info.finfo);
		}
		break;
	case DOWNLOAD_CONST:
	case CONST:
		if (symbol->info.cinfo != NULL)
			FUNC0(symbol->info.cinfo);
		break;
	case LABEL:
		if (symbol->info.linfo != NULL)
			FUNC0(symbol->info.linfo);
		break;
	case UNINITIALIZED:
	default:
		break;
	}
	FUNC0(symbol->name);
	FUNC0(symbol);
}