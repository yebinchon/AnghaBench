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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int unit; int in_use; struct TYPE_3__* next; } ;
typedef  TYPE_1__ adpt_hba ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  adpt_configuration_lock ; 
 TYPE_1__* hba_chain ; 
 int hba_count ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	int minor;
	adpt_hba* pHba;

	FUNC1();
	//TODO check for root access
	//
	minor = FUNC0(inode);
	if (minor >= hba_count) {
		FUNC4();
		return -ENXIO;
	}
	FUNC2(&adpt_configuration_lock);
	for (pHba = hba_chain; pHba; pHba = pHba->next) {
		if (pHba->unit == minor) {
			break;	/* found adapter */
		}
	}
	if (pHba == NULL) {
		FUNC3(&adpt_configuration_lock);
		FUNC4();
		return -ENXIO;
	}

//	if(pHba->in_use){
	//	mutex_unlock(&adpt_configuration_lock);
//		return -EBUSY;
//	}

	pHba->in_use = 1;
	FUNC3(&adpt_configuration_lock);
	FUNC4();

	return 0;
}