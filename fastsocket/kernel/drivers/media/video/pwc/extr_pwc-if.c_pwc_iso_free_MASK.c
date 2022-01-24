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
struct urb {int dummy; } ;
struct pwc_device {TYPE_1__* sbuf; } ;
struct TYPE_2__ {struct urb* urb; } ;

/* Variables and functions */
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 

__attribute__((used)) static void FUNC2(struct pwc_device *pdev)
{
	int i;

	/* Freeing ISOC buffers one by one */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		struct urb *urb;

		urb = pdev->sbuf[i].urb;
		if (urb) {
			FUNC0("Freeing URB\n");
			FUNC1(urb);
			pdev->sbuf[i].urb = NULL;
		}
	}
}