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
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  adpt_hba ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC2(struct Scsi_Host *host)
{
	adpt_hba* pHba = (adpt_hba*) host->hostdata[0];
//	adpt_i2o_quiesce_hba(pHba);
	FUNC0(pHba);
	FUNC1(host);
	return 0;
}