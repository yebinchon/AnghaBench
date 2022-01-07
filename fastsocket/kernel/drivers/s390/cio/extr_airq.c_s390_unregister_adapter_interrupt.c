
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct airq_t {int dummy; } ;
typedef int dbf_txt ;
typedef int addr_t ;
struct TYPE_2__ {scalar_t__* byte; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int ** airqs ;
 TYPE_1__* indicators ;
 int kfree (struct airq_t*) ;
 int snprintf (char*,int,char*,int) ;
 int synchronize_sched () ;
 struct airq_t* xchg (int *,int *) ;

void s390_unregister_adapter_interrupt(void *ind, u8 isc)
{
 struct airq_t *airq;
 char dbf_txt[16];
 int i;

 i = (int) ((addr_t) ind) - ((addr_t) &indicators[isc].byte[0]);
 snprintf(dbf_txt, sizeof(dbf_txt), "urairq:%d", i);
 CIO_TRACE_EVENT(4, dbf_txt);
 indicators[isc].byte[i] = 0;
 airq = xchg(&airqs[isc][i], ((void*)0));




 synchronize_sched();
 kfree(airq);
}
