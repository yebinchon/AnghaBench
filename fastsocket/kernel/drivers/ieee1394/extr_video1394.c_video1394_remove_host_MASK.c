#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ti_ohci {TYPE_1__* host; } ;
struct hpsb_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE1394_MAJOR ; 
 int IEEE1394_MINOR_BLOCK_VIDEO1394 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_ohci* FUNC2 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 int /*<<< orphan*/  hpsb_protocol_class ; 
 int /*<<< orphan*/  video1394_highlevel ; 

__attribute__((used)) static void FUNC3 (struct hpsb_host *host)
{
	struct ti_ohci *ohci = FUNC2(&video1394_highlevel, host);

	if (ohci)
		FUNC1(hpsb_protocol_class, FUNC0(IEEE1394_MAJOR,
			       IEEE1394_MINOR_BLOCK_VIDEO1394 * 16 + ohci->host->id));
	return;
}