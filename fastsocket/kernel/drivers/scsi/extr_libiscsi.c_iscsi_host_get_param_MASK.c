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
struct iscsi_host {char* netdev; char* hwaddress; char* initiatorname; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;

/* Variables and functions */
 int ENOSYS ; 
#define  ISCSI_HOST_PARAM_HWADDRESS 130 
#define  ISCSI_HOST_PARAM_INITIATOR_NAME 129 
#define  ISCSI_HOST_PARAM_NETDEV_NAME 128 
 struct iscsi_host* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (char*,char*,char*) ; 

int FUNC2(struct Scsi_Host *shost, enum iscsi_host_param param,
			 char *buf)
{
	struct iscsi_host *ihost = FUNC0(shost);
	int len;

	switch (param) {
	case ISCSI_HOST_PARAM_NETDEV_NAME:
		len = FUNC1(buf, "%s\n", ihost->netdev);
		break;
	case ISCSI_HOST_PARAM_HWADDRESS:
		len = FUNC1(buf, "%s\n", ihost->hwaddress);
		break;
	case ISCSI_HOST_PARAM_INITIATOR_NAME:
		len = FUNC1(buf, "%s\n", ihost->initiatorname);
		break;
	default:
		return -ENOSYS;
	}

	return len;
}