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
struct scsi_dh_data {scalar_t__ buf; } ;
struct scsi_device {struct scsi_dh_data* scsi_dh_data; } ;
struct hp_sw_dh_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct hp_sw_dh_data *FUNC1(struct scsi_device *sdev)
{
	struct scsi_dh_data *scsi_dh_data = sdev->scsi_dh_data;
	FUNC0(scsi_dh_data == NULL);
	return ((struct hp_sw_dh_data *) scsi_dh_data->buf);
}