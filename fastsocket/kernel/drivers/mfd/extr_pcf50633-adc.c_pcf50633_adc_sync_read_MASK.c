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
struct pcf50633_adc_request {int mux; int avg; int result; int /*<<< orphan*/  completion; struct pcf50633_adc_request* callback_param; int /*<<< orphan*/  callback; } ;
struct pcf50633 {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pcf50633*,struct pcf50633_adc_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pcf50633_adc_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf50633_adc_sync_read_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct pcf50633 *pcf, int mux, int avg)
{
	struct pcf50633_adc_request *req;
	int err;

	/* req is freed when the result is ready, in interrupt handler */
	req = FUNC2(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	req->mux = mux;
	req->avg = avg;
	req->callback =  pcf50633_adc_sync_read_callback;
	req->callback_param = req;

	FUNC1(&req->completion);
	err = FUNC0(pcf, req);
	if (err)
		return err;

	FUNC3(&req->completion);

	/* FIXME by this time req might be already freed */
	return req->result;
}