
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct pcap_adc_sync_request {int completion; void** res; } ;


 int complete (int *) ;

__attribute__((used)) static void pcap_adc_sync_cb(void *param, u16 res[])
{
 struct pcap_adc_sync_request *req = param;

 req->res[0] = res[0];
 req->res[1] = res[1];
 complete(&req->completion);
}
