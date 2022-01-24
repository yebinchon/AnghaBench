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
struct Scsi_Host {int dummy; } ;
typedef  enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
#define  ISCSI_HOST_PARAM_HWADDRESS 131 
#define  ISCSI_HOST_PARAM_INITIATOR_NAME 130 
#define  ISCSI_HOST_PARAM_PORT_SPEED 129 
#define  ISCSI_HOST_PARAM_PORT_STATE 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC0 (char*,struct beiscsi_hba*) ; 
 int FUNC1 (char*,struct beiscsi_hba*) ; 
 int FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (struct Scsi_Host*) ; 
 char* FUNC6 (struct Scsi_Host*) ; 
 int FUNC7 (struct Scsi_Host*,int,char*) ; 
 struct beiscsi_hba* FUNC8 (struct Scsi_Host*) ; 
 int FUNC9 (char*,char*,char*) ; 

int FUNC10(struct Scsi_Host *shost,
			   enum iscsi_host_param param, char *buf)
{
	struct beiscsi_hba *phba = FUNC8(shost);
	int status = 0;

	FUNC4(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_get_host_param,"
		    " param= %d\n", param);

	switch (param) {
	case ISCSI_HOST_PARAM_HWADDRESS:
		status = FUNC1(buf, phba);
		if (status < 0) {
			FUNC4(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
				    "BS_%d : beiscsi_get_macaddr Failed\n");
			return status;
		}
		break;
	case ISCSI_HOST_PARAM_INITIATOR_NAME:
		status = FUNC0(buf, phba);
		if (status < 0) {
			FUNC4(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
				    "BS_%d : Retreiving Initiator Name Failed\n");
			return status;
		}
		break;
	case ISCSI_HOST_PARAM_PORT_STATE:
		FUNC3(shost);
		status = FUNC9(buf, "%s\n", FUNC6(shost));
		break;
	case ISCSI_HOST_PARAM_PORT_SPEED:
		status = FUNC2(shost);
		if (status) {
			FUNC4(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
				    "BS_%d : Retreiving Port Speed Failed\n");
			return status;
		}
		status = FUNC9(buf, "%s\n", FUNC5(shost));
		break;
	default:
		return FUNC7(shost, param, buf);
	}
	return status;
}