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
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_hba_name {char* initiator_name; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int EBUSY ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,int /*<<< orphan*/ *) ; 
 struct be_cmd_hba_name* FUNC3 (struct be_mcc_wrb*) ; 
 int FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(char *buf, struct beiscsi_hba *phba)
{
	int rc;
	unsigned int tag;
	struct be_mcc_wrb *wrb;
	struct be_cmd_hba_name *resp;

	tag = FUNC0(phba);
	if (!tag) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Getting Initiator Name Failed\n");

		return -EBUSY;
	}

	rc = FUNC2(phba, tag, &wrb, NULL);
	if (rc) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
			    "BS_%d : Initiator Name MBX Failed\n");
		return rc;
	}

	resp = FUNC3(wrb);
	rc = FUNC4(buf, "%s\n", resp->initiator_name);
	return rc;
}