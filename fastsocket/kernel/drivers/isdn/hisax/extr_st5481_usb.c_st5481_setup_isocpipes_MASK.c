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
typedef  int /*<<< orphan*/  usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct urb*,struct usb_device*,unsigned int,unsigned char*,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 

int
FUNC5(struct urb* urb[2], struct usb_device *dev, 
			   unsigned int pipe, int num_packets,
			   int packet_size, int buf_size,
			   usb_complete_t complete, void *context)
{
	int j, retval;
	unsigned char *buf;

	for (j = 0; j < 2; j++) {
		retval = -ENOMEM;
		urb[j] = FUNC3(num_packets, GFP_KERNEL);
		if (!urb[j])
			goto err;

		// Allocate memory for 2000bytes/sec (16Kb/s)
		buf = FUNC2(buf_size, GFP_KERNEL);
		if (!buf)
			goto err;
			
		// Fill the isochronous URB
		FUNC0(urb[j], dev, pipe, buf, 
			      num_packets, packet_size, complete,
			      context);
	}
	return 0;

 err:
	for (j = 0; j < 2; j++) {
		if (urb[j]) {
			FUNC1(urb[j]->transfer_buffer);
			urb[j]->transfer_buffer = NULL;
			FUNC4(urb[j]);
			urb[j] = NULL;
		}
	}
	return retval;
}