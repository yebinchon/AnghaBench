
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct capilib_ncci {size_t winsize; TYPE_1__* msgidpool; TYPE_1__* msgidfree; scalar_t__ nmsg; int * msgidlast; int * msgidqueue; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void mq_init(struct capilib_ncci * np)
{
 u_int i;
 np->msgidqueue = ((void*)0);
 np->msgidlast = ((void*)0);
 np->nmsg = 0;
 memset(np->msgidpool, 0, sizeof(np->msgidpool));
 np->msgidfree = &np->msgidpool[0];
 for (i = 1; i < np->winsize; i++) {
  np->msgidpool[i].next = np->msgidfree;
  np->msgidfree = &np->msgidpool[i];
 }
}
