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
struct scsi_device {scalar_t__ device_busy; scalar_t__ device_blocked; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 scalar_t__ FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 

__attribute__((used)) static inline int FUNC4(struct request_queue *q,
				  struct scsi_device *sdev)
{
	if (sdev->device_busy == 0 && sdev->device_blocked) {
		/*
		 * unblock after device_blocked iterates to zero
		 */
		if (--sdev->device_blocked == 0) {
			FUNC0(3,
				   FUNC3(KERN_INFO, sdev,
				   "unblocking device at zero depth\n"));
		} else {
			FUNC1(q);
			return 0;
		}
	}
	if (FUNC2(sdev))
		return 0;

	return 1;
}