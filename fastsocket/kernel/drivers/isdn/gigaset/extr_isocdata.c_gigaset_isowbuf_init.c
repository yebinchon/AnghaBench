
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isowbuf_t {unsigned char idle; scalar_t__ data; scalar_t__ wbits; int writesem; scalar_t__ write; scalar_t__ nextread; scalar_t__ read; } ;


 int BAS_OUTBUFPAD ;
 scalar_t__ BAS_OUTBUFSIZE ;
 int atomic_set (int *,int) ;
 int memset (scalar_t__,unsigned char,int ) ;

void gigaset_isowbuf_init(struct isowbuf_t *iwb, unsigned char idle)
{
 iwb->read = 0;
 iwb->nextread = 0;
 iwb->write = 0;
 atomic_set(&iwb->writesem, 1);
 iwb->wbits = 0;
 iwb->idle = idle;
 memset(iwb->data + BAS_OUTBUFSIZE, idle, BAS_OUTBUFPAD);
}
