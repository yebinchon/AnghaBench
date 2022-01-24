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
struct TYPE_2__ {int /*<<< orphan*/  level; int /*<<< orphan*/ * id; int /*<<< orphan*/  view; int /*<<< orphan*/  len; int /*<<< orphan*/  areas; int /*<<< orphan*/  pages; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int QETH_DBF_INFOS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* qeth_dbf ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;
	int x;

	for (x = 0; x < QETH_DBF_INFOS; x++) {
		/* register the areas */
		qeth_dbf[x].id = FUNC0(qeth_dbf[x].name,
						qeth_dbf[x].pages,
						qeth_dbf[x].areas,
						qeth_dbf[x].len);
		if (qeth_dbf[x].id == NULL) {
			FUNC3();
			return -ENOMEM;
		}

		/* register a view */
		ret = FUNC1(qeth_dbf[x].id, qeth_dbf[x].view);
		if (ret) {
			FUNC3();
			return ret;
		}

		/* set a passing level */
		FUNC2(qeth_dbf[x].id, qeth_dbf[x].level);
	}

	return 0;
}