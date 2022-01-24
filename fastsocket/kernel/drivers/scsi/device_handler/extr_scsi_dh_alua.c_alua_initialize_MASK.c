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
struct scsi_device {int dummy; } ;
struct alua_dh_data {int dummy; } ;

/* Variables and functions */
 int SCSI_DH_OK ; 
 int FUNC0 (struct scsi_device*,struct alua_dh_data*) ; 
 int FUNC1 (struct scsi_device*,struct alua_dh_data*) ; 
 int FUNC2 (struct scsi_device*,struct alua_dh_data*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev, struct alua_dh_data *h)
{
	int err;

	err = FUNC0(sdev, h);
	if (err != SCSI_DH_OK)
		goto out;

	err = FUNC2(sdev, h);
	if (err != SCSI_DH_OK)
		goto out;

	err = FUNC1(sdev, h);
	if (err != SCSI_DH_OK)
		goto out;

out:
	return err;
}