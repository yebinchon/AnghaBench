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
struct pcf50633_adc_request {int mux; int avg; void (* callback ) (struct pcf50633*,void*,int) ;void* callback_param; } ;
struct pcf50633 {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pcf50633*,struct pcf50633_adc_request*) ; 
 struct pcf50633_adc_request* FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct pcf50633 *pcf, int mux, int avg,
			     void (*callback)(struct pcf50633 *, void *, int),
			     void *callback_param)
{
	struct pcf50633_adc_request *req;

	/* req is freed when the result is ready, in interrupt handler */
	req = FUNC1(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	req->mux = mux;
	req->avg = avg;
	req->callback = callback;
	req->callback_param = callback_param;

	return FUNC0(pcf, req);
}