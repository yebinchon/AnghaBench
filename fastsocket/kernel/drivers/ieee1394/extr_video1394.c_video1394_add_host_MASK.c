#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_ohci {TYPE_1__* host; } ;
struct hpsb_host {scalar_t__ hostdata; TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE1394_MAJOR ; 
 int IEEE1394_MINOR_BLOCK_VIDEO1394 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OHCI1394_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  VIDEO1394_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpsb_protocol_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hpsb_host*,struct ti_ohci*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hpsb_host*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video1394_highlevel ; 

__attribute__((used)) static void FUNC7 (struct hpsb_host *host)
{
	struct ti_ohci *ohci;
	int minor;

	/* We only work with the OHCI-1394 driver */
	if (FUNC6(host->driver->name, OHCI1394_DRIVER_NAME))
		return;

	ohci = (struct ti_ohci *)host->hostdata;

	if (!FUNC3(&video1394_highlevel, host, 0)) {
		FUNC1(KERN_ERR, ohci->host->id, "Cannot allocate hostinfo");
		return;
	}

	FUNC4(&video1394_highlevel, host, ohci);
	FUNC5(&video1394_highlevel, host, ohci->host->id);

	minor = IEEE1394_MINOR_BLOCK_VIDEO1394 * 16 + ohci->host->id;
	FUNC2(hpsb_protocol_class, NULL, FUNC0(IEEE1394_MAJOR, minor),
		      NULL, "%s-%d", VIDEO1394_DRIVER_NAME, ohci->host->id);
}