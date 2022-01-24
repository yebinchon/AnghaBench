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
struct beiscsi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct beiscsi_hba*) ; 

__attribute__((used)) static int FUNC4(struct beiscsi_hba *phba)
{
	int ret = -ENOMEM;

	ret = FUNC1(phba);
	if (ret < 0) {
		FUNC2(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : beiscsi_dev_probe -"
			    "Failed in beiscsi_alloc_memory\n");
		return ret;
	}

	ret = FUNC3(phba);
	if (ret)
		goto free_init;
	FUNC2(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "BM_%d : Return success from beiscsi_init_controller");

	return 0;

free_init:
	FUNC0(phba);
	return ret;
}