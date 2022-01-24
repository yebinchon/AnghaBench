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
struct aiptek {int /*<<< orphan*/  ifnum; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_REPORT ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct aiptek *aiptek,
		  unsigned char report_type,
		  unsigned char report_id, void *buffer, int size)
{
	return FUNC0(aiptek->usbdev,
			       FUNC1(aiptek->usbdev, 0),
			       USB_REQ_GET_REPORT,
			       USB_TYPE_CLASS | USB_RECIP_INTERFACE |
			       USB_DIR_IN, (report_type << 8) + report_id,
			       aiptek->ifnum, buffer, size, 5000);
}