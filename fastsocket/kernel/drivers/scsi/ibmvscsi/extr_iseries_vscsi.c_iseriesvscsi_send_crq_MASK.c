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
typedef  int /*<<< orphan*/  u64 ;
struct ibmvscsi_host_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HvLpEvent_AckInd_NoAck ; 
 int /*<<< orphan*/  HvLpEvent_AckType_ImmediateAck ; 
 int /*<<< orphan*/  HvLpEvent_Type_VirtualIo ; 
 int VIOVERSION ; 
 struct ibmvscsi_host_data* single_host_data ; 
 int /*<<< orphan*/  viomajorsubtype_scsi ; 
 int /*<<< orphan*/  viopath_hostLp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ibmvscsi_host_data *hostdata,
				 u64 word1, u64 word2)
{
	single_host_data = hostdata;
	return FUNC0(viopath_hostLp,
					     HvLpEvent_Type_VirtualIo,
					     viomajorsubtype_scsi,
					     HvLpEvent_AckInd_NoAck,
					     HvLpEvent_AckType_ImmediateAck,
					     FUNC1(viopath_hostLp),
					     FUNC2(viopath_hostLp),
					     0,
					     VIOVERSION << 16, word1, word2, 0,
					     0);
}