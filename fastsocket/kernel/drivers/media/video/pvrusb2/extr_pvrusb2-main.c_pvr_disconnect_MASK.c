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
struct usb_interface {int dummy; } ;
struct pvr2_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct pvr2_context*) ; 
 struct pvr2_context* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct pvr2_context *pvr = FUNC2(intf);

	FUNC1(PVR2_TRACE_INIT,"pvr_disconnect(pvr=%p) BEGIN",pvr);

	FUNC3 (intf, NULL);
	FUNC0(pvr);

	FUNC1(PVR2_TRACE_INIT,"pvr_disconnect(pvr=%p) DONE",pvr);

}