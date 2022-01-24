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
typedef  size_t uint16_t ;
struct beiscsi_hba {int /*<<< orphan*/ ** conn_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 size_t FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct beiscsi_hba *phba,
				      unsigned int cid)
{
	uint16_t cri_index = FUNC0(cid);

	if (phba->conn_table[cri_index])
		phba->conn_table[cri_index] = NULL;
	else {
		FUNC1(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : Connection table Not occupied.\n");
		return -EINVAL;
	}
	return 0;
}