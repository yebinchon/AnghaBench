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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct tape_request {int dummy; } ;
struct tape_device {TYPE_2__* cdev; } ;
struct TYPE_3__ {char* data; } ;
struct tape_3590_sense {TYPE_1__ fmt; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EKEYREJECTED ; 
 int /*<<< orphan*/  ENOKEY ; 
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tape_device*,struct tape_request*,struct irb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tape_device *device,
				 struct tape_request *request, struct irb *irb)
{
	u8 cu_rc, ekm_rc1;
	u16 ekm_rc2;
	u32 drv_rc;
	const char *bus_id;
	char *sense;

	sense = ((struct tape_3590_sense *) irb->ecw)->fmt.data;
	bus_id = FUNC1(&device->cdev->dev);
	cu_rc = sense[0];
	drv_rc = *((u32*) &sense[5]) & 0xffffff;
	ekm_rc1 = sense[9];
	ekm_rc2 = *((u16*) &sense[10]);
	if ((cu_rc == 0) && (ekm_rc2 == 0xee31))
		/* key not defined on EKM */
		return FUNC2(device, request, irb, -EKEYREJECTED);
	if ((cu_rc == 1) || (cu_rc == 2))
		/* No connection to EKM */
		return FUNC2(device, request, irb, -ENOTCONN);

	FUNC0 (&device->cdev->dev, "The tape unit failed to obtain the "
		"encryption key from EKM\n");

	return FUNC2(device, request, irb, -ENOKEY);
}