
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ncci_datahandle_queue {scalar_t__ datahandle; int len; struct ncci_datahandle_queue* next; } ;
struct capidrv_ncci {struct ncci_datahandle_queue* ackqueue; } ;


 int kfree (struct ncci_datahandle_queue*) ;

__attribute__((used)) static int capidrv_del_ack(struct capidrv_ncci *nccip, u16 datahandle)
{
 struct ncci_datahandle_queue **pp, *p;
 int len;

 for (pp = &nccip->ackqueue; *pp; pp = &(*pp)->next) {
   if ((*pp)->datahandle == datahandle) {
   p = *pp;
   len = p->len;
   *pp = (*pp)->next;
          kfree(p);
   return len;
  }
 }
 return -1;
}
