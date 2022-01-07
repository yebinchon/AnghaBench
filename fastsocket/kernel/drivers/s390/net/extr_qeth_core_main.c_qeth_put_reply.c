
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_reply {int refcnt; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct qeth_reply*) ;

__attribute__((used)) static void qeth_put_reply(struct qeth_reply *reply)
{
 WARN_ON(atomic_read(&reply->refcnt) <= 0);
 if (atomic_dec_and_test(&reply->refcnt))
  kfree(reply);
}
