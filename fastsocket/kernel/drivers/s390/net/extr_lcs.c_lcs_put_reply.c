
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_reply {int refcnt; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct lcs_reply*) ;

__attribute__((used)) static void
lcs_put_reply(struct lcs_reply *reply)
{
        WARN_ON(atomic_read(&reply->refcnt) <= 0);
        if (atomic_dec_and_test(&reply->refcnt)) {
  kfree(reply);
 }

}
