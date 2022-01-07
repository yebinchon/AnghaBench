
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_reply {int refcnt; } ;


 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static void
lcs_get_reply(struct lcs_reply *reply)
{
 WARN_ON(atomic_read(&reply->refcnt) <= 0);
 atomic_inc(&reply->refcnt);
}
