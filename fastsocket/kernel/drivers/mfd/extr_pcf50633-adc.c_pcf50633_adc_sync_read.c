
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc_request {int mux; int avg; int result; int completion; struct pcf50633_adc_request* callback_param; int callback; } ;
struct pcf50633 {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int adc_enqueue_request (struct pcf50633*,struct pcf50633_adc_request*) ;
 int init_completion (int *) ;
 struct pcf50633_adc_request* kzalloc (int,int ) ;
 int pcf50633_adc_sync_read_callback ;
 int wait_for_completion (int *) ;

int pcf50633_adc_sync_read(struct pcf50633 *pcf, int mux, int avg)
{
 struct pcf50633_adc_request *req;
 int err;


 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 req->mux = mux;
 req->avg = avg;
 req->callback = pcf50633_adc_sync_read_callback;
 req->callback_param = req;

 init_completion(&req->completion);
 err = adc_enqueue_request(pcf, req);
 if (err)
  return err;

 wait_for_completion(&req->completion);


 return req->result;
}
