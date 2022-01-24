#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sony_pic_dev {scalar_t__ (* handle_irq ) (int,int) ;int /*<<< orphan*/  acpi_dev; scalar_t__ evport_offset; TYPE_5__* cur_ioport; TYPE_3__* event_types; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_9__ {scalar_t__ minimum; } ;
struct TYPE_6__ {scalar_t__ minimum; } ;
struct TYPE_10__ {TYPE_4__ io1; TYPE_1__ io2; } ;
struct TYPE_8__ {int mask; int data; TYPE_2__* events; } ;
struct TYPE_7__ {int event; int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,scalar_t__,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int mask ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	int i, j;
	u8 ev = 0;
	u8 data_mask = 0;
	u8 device_event = 0;

	struct sony_pic_dev *dev = (struct sony_pic_dev *) dev_id;

	ev = FUNC2(dev->cur_ioport->io1.minimum);
	if (dev->cur_ioport->io2.minimum)
		data_mask = FUNC2(dev->cur_ioport->io2.minimum);
	else
		data_mask = FUNC2(dev->cur_ioport->io1.minimum +
				dev->evport_offset);

	FUNC1("event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\n",
			ev, data_mask, dev->cur_ioport->io1.minimum,
			dev->evport_offset);

	if (ev == 0x00 || ev == 0xff)
		return IRQ_HANDLED;

	for (i = 0; dev->event_types[i].mask; i++) {

		if ((data_mask & dev->event_types[i].data) !=
		    dev->event_types[i].data)
			continue;

		if (!(mask & dev->event_types[i].mask))
			continue;

		for (j = 0; dev->event_types[i].events[j].event; j++) {
			if (ev == dev->event_types[i].events[j].data) {
				device_event =
					dev->event_types[i].events[j].event;
				goto found;
			}
		}
	}
	/* Still not able to decode the event try to pass
	 * it over to the minidriver
	 */
	if (dev->handle_irq && dev->handle_irq(data_mask, ev) == 0)
		return IRQ_HANDLED;

	FUNC1("unknown event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\n",
			ev, data_mask, dev->cur_ioport->io1.minimum,
			dev->evport_offset);
	return IRQ_HANDLED;

found:
	FUNC3(device_event);
	FUNC0(dev->acpi_dev, 1, device_event);
	FUNC4(device_event);

	return IRQ_HANDLED;
}