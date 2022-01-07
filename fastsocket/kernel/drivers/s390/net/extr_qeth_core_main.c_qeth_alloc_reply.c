
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_reply {struct qeth_card* card; int received; int refcnt; } ;
struct qeth_card {int dummy; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 struct qeth_reply* kzalloc (int,int ) ;

__attribute__((used)) static struct qeth_reply *qeth_alloc_reply(struct qeth_card *card)
{
 struct qeth_reply *reply;

 reply = kzalloc(sizeof(struct qeth_reply), GFP_ATOMIC);
 if (reply) {
  atomic_set(&reply->refcnt, 1);
  atomic_set(&reply->received, 0);
  reply->card = card;
 };
 return reply;
}
