
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct capilib_ncci {int nmsg; struct capilib_msgidqueue* msgidqueue; struct capilib_msgidqueue* msgidlast; struct capilib_msgidqueue* msgidfree; } ;
struct capilib_msgidqueue {struct capilib_msgidqueue* next; int msgid; } ;



__attribute__((used)) static inline int mq_enqueue(struct capilib_ncci * np, u16 msgid)
{
 struct capilib_msgidqueue *mq;
 if ((mq = np->msgidfree) == ((void*)0))
  return 0;
 np->msgidfree = mq->next;
 mq->msgid = msgid;
 mq->next = ((void*)0);
 if (np->msgidlast)
  np->msgidlast->next = mq;
 np->msgidlast = mq;
 if (!np->msgidqueue)
  np->msgidqueue = mq;
 np->nmsg++;
 return 1;
}
