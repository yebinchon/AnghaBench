
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc_request {int callback_param; int (* callback ) (struct pcf50633*,int ,int) ;} ;
struct pcf50633_adc {int queue_head; int queue_mutex; struct pcf50633_adc_request** queue; struct pcf50633* pcf; } ;
struct pcf50633 {int dev; } ;


 int PCF50633_MAX_ADC_FIFO_DEPTH ;
 scalar_t__ WARN_ON (int) ;
 int adc_result (struct pcf50633*) ;
 int dev_err (int ,char*) ;
 int kfree (struct pcf50633_adc_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pcf50633*,int ,int) ;
 int trigger_next_adc_job_if_any (struct pcf50633*) ;

__attribute__((used)) static void pcf50633_adc_irq(int irq, void *data)
{
 struct pcf50633_adc *adc = data;
 struct pcf50633 *pcf = adc->pcf;
 struct pcf50633_adc_request *req;
 int head, res;

 mutex_lock(&adc->queue_mutex);
 head = adc->queue_head;

 req = adc->queue[head];
 if (WARN_ON(!req)) {
  dev_err(pcf->dev, "pcf50633-adc irq: ADC queue empty!\n");
  mutex_unlock(&adc->queue_mutex);
  return;
 }
 adc->queue[head] = ((void*)0);
 adc->queue_head = (head + 1) &
          (PCF50633_MAX_ADC_FIFO_DEPTH - 1);

 res = adc_result(pcf);
 trigger_next_adc_job_if_any(pcf);

 mutex_unlock(&adc->queue_mutex);

 req->callback(pcf, req->callback_param, res);
 kfree(req);
}
