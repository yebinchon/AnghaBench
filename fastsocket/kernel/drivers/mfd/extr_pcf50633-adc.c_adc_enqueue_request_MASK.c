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
struct pcf50633_adc_request {int dummy; } ;
struct pcf50633_adc {int queue_head; int queue_tail; int /*<<< orphan*/  queue_mutex; struct pcf50633_adc_request** queue; } ;
struct pcf50633 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int PCF50633_MAX_ADC_FIFO_DEPTH ; 
 struct pcf50633_adc* FUNC0 (struct pcf50633*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcf50633*) ; 

__attribute__((used)) static int
FUNC5(struct pcf50633 *pcf, struct pcf50633_adc_request *req)
{
	struct pcf50633_adc *adc = FUNC0(pcf);
	int head, tail;

	FUNC2(&adc->queue_mutex);

	head = adc->queue_head;
	tail = adc->queue_tail;

	if (adc->queue[tail]) {
		FUNC3(&adc->queue_mutex);
		FUNC1(pcf->dev, "ADC queue is full, dropping request\n");
		return -EBUSY;
	}

	adc->queue[tail] = req;
	if (head == tail)
		FUNC4(pcf);
	adc->queue_tail = (tail + 1) & (PCF50633_MAX_ADC_FIFO_DEPTH - 1);

	FUNC3(&adc->queue_mutex);

	return 0;
}