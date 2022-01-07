
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct airq_t {void* drv_data; int handler; } ;
typedef int dbf_txt ;
typedef int adapter_int_handler_t ;
struct TYPE_2__ {void* byte; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 size_t MAX_ISC ;
 TYPE_1__* indicators ;
 int kfree (struct airq_t*) ;
 struct airq_t* kmalloc (int,int ) ;
 int register_airq (struct airq_t*,size_t) ;
 int snprintf (char*,int,char*,int) ;

void *s390_register_adapter_interrupt(adapter_int_handler_t handler,
          void *drv_data, u8 isc)
{
 struct airq_t *airq;
 char dbf_txt[16];
 int ret;

 if (isc > MAX_ISC)
  return ERR_PTR(-EINVAL);
 airq = kmalloc(sizeof(struct airq_t), GFP_KERNEL);
 if (!airq) {
  ret = -ENOMEM;
  goto out;
 }
 airq->handler = handler;
 airq->drv_data = drv_data;

 ret = register_airq(airq, isc);
out:
 snprintf(dbf_txt, sizeof(dbf_txt), "rairq:%d", ret);
 CIO_TRACE_EVENT(4, dbf_txt);
 if (ret < 0) {
  kfree(airq);
  return ERR_PTR(ret);
 } else
  return &indicators[isc].byte[ret];
}
