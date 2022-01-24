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
struct scsi_device {int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_ANY ; 
 int HZ ; 
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  STORVSC_MAX_IO_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int storvsc_timeout ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdevice)
{
	FUNC3(sdevice, MSG_SIMPLE_TAG,
				STORVSC_MAX_IO_REQUESTS);

	FUNC1(sdevice->request_queue, PAGE_SIZE);

	FUNC0(sdevice->request_queue, BLK_BOUNCE_ANY);

	FUNC2(sdevice->request_queue, (storvsc_timeout * HZ));

	return 0;
}