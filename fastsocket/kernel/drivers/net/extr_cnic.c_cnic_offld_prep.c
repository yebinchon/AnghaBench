
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;


 int SK_F_CONNECT_START ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_offld_prep(struct cnic_sock *csk)
{
 if (test_and_set_bit(SK_F_OFFLD_SCHED, &csk->flags))
  return 0;

 if (!test_bit(SK_F_CONNECT_START, &csk->flags)) {
  clear_bit(SK_F_OFFLD_SCHED, &csk->flags);
  return 0;
 }

 return 1;
}
