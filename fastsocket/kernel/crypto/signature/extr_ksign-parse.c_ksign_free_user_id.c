
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_user_id {int dummy; } ;


 int kfree (struct ksign_user_id*) ;

void ksign_free_user_id(struct ksign_user_id *uid)
{
 kfree(uid);
}
