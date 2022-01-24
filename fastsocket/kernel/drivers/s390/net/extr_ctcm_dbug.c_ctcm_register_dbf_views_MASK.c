#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  level; int /*<<< orphan*/ * id; int /*<<< orphan*/  len; int /*<<< orphan*/  areas; int /*<<< orphan*/  pages; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CTCM_DBF_INFOS ; 
 int ENOMEM ; 
 TYPE_1__* ctcm_dbf ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	int x;
	for (x = 0; x < CTCM_DBF_INFOS; x++) {
		/* register the areas */
		ctcm_dbf[x].id = FUNC1(ctcm_dbf[x].name,
						ctcm_dbf[x].pages,
						ctcm_dbf[x].areas,
						ctcm_dbf[x].len);
		if (ctcm_dbf[x].id == NULL) {
			FUNC0();
			return -ENOMEM;
		}

		/* register a view */
		FUNC2(ctcm_dbf[x].id, &debug_hex_ascii_view);
		/* set a passing level */
		FUNC3(ctcm_dbf[x].id, ctcm_dbf[x].level);
	}

	return 0;
}