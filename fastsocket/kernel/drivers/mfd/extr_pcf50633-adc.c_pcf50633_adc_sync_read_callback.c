
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc_request {int result; int completion; } ;
struct pcf50633 {int dummy; } ;


 int complete (int *) ;

__attribute__((used)) static void
pcf50633_adc_sync_read_callback(struct pcf50633 *pcf, void *param, int result)
{
 struct pcf50633_adc_request *req = param;

 req->result = result;
 complete(&req->completion);
}
