
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct pcap_chip {size_t adc_tail; int adc_mutex; struct pcap_adc_request** adc_queue; } ;
struct pcap_adc_request {void* data; void* callback; void** ch; int flags; void* bank; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCAP_ADC_MAXQ ;
 int kfree (struct pcap_adc_request*) ;
 struct pcap_adc_request* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcap_adc_trigger (struct pcap_chip*) ;

int pcap_adc_async(struct pcap_chip *pcap, u8 bank, u32 flags, u8 ch[],
      void *callback, void *data)
{
 struct pcap_adc_request *req;


 req = kmalloc(sizeof(struct pcap_adc_request), GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 req->bank = bank;
 req->flags = flags;
 req->ch[0] = ch[0];
 req->ch[1] = ch[1];
 req->callback = callback;
 req->data = data;

 mutex_lock(&pcap->adc_mutex);
 if (pcap->adc_queue[pcap->adc_tail]) {
  mutex_unlock(&pcap->adc_mutex);
  kfree(req);
  return -EBUSY;
 }
 pcap->adc_queue[pcap->adc_tail] = req;
 pcap->adc_tail = (pcap->adc_tail + 1) & (PCAP_ADC_MAXQ - 1);
 mutex_unlock(&pcap->adc_mutex);


 pcap_adc_trigger(pcap);

 return 0;
}
