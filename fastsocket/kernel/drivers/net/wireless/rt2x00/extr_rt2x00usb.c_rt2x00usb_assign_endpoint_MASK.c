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
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device {int dummy; } ;
struct data_queue {scalar_t__ qid; int usb_maxpacket; int /*<<< orphan*/  usb_endpoint; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_endpoint_descriptor*) ; 
 void* FUNC2 (struct usb_device*,int,int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct data_queue *queue,
				      struct usb_endpoint_descriptor *ep_desc)
{
	struct usb_device *usb_dev = FUNC0(queue->rt2x00dev->dev);
	int pipe;

	queue->usb_endpoint = FUNC1(ep_desc);

	if (queue->qid == QID_RX) {
		pipe = FUNC3(usb_dev, queue->usb_endpoint);
		queue->usb_maxpacket = FUNC2(usb_dev, pipe, 0);
	} else {
		pipe = FUNC4(usb_dev, queue->usb_endpoint);
		queue->usb_maxpacket = FUNC2(usb_dev, pipe, 1);
	}

	if (!queue->usb_maxpacket)
		queue->usb_maxpacket = 1;
}