#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ks959_speedparams {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  baudrate; } ;
struct ks959_cb {TYPE_1__* speed_urb; TYPE_3__ speedparams; int /*<<< orphan*/ * speed_setuprequest; int /*<<< orphan*/  usbdev; } ;
struct TYPE_5__ {scalar_t__ status; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KS_DATA_8_BITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ks959_speed_irq ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,TYPE_3__*,int,int /*<<< orphan*/ ,struct ks959_cb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ks959_cb *kingsun, unsigned speed)
{
	static unsigned int supported_speeds[] = { 2400, 9600, 19200, 38400,
		57600, 115200, 576000, 1152000, 4000000, 0
	};
	int err;
	unsigned int i;

	if (kingsun->speed_setuprequest == NULL || kingsun->speed_urb == NULL)
		return -ENOMEM;

	/* Check that requested speed is among the supported ones */
	for (i = 0; supported_speeds[i] && supported_speeds[i] != speed; i++) ;
	if (supported_speeds[i] == 0)
		return -EOPNOTSUPP;

	FUNC1(&(kingsun->speedparams), 0, sizeof(struct ks959_speedparams));
	kingsun->speedparams.baudrate = FUNC0(speed);
	kingsun->speedparams.flags = KS_DATA_8_BITS;

	/* speed_setuprequest pre-filled in ks959_probe */
	FUNC2(kingsun->speed_urb, kingsun->usbdev,
			     FUNC3(kingsun->usbdev, 0),
			     (unsigned char *)kingsun->speed_setuprequest,
			     &(kingsun->speedparams),
			     sizeof(struct ks959_speedparams), ks959_speed_irq,
			     kingsun);
	kingsun->speed_urb->status = 0;
	err = FUNC4(kingsun->speed_urb, GFP_ATOMIC);

	return err;
}