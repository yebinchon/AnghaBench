
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; int state; } ;


 int EALREADY ;
 int EINVAL ;
 int L4_KCQE_OPCODE_VALUE_CLOSE_COMP ;
 int SK_F_PG_OFFLD_COMPLETE ;
 scalar_t__ cnic_close_prep (struct cnic_sock*) ;
 int cnic_cm_close_req (struct cnic_sock*) ;
 int cnic_in_use (struct cnic_sock*) ;
 int msleep (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_cm_close(struct cnic_sock *csk)
{
 if (!cnic_in_use(csk))
  return -EINVAL;

 if (cnic_close_prep(csk)) {
  csk->state = L4_KCQE_OPCODE_VALUE_CLOSE_COMP;
  return cnic_cm_close_req(csk);
 } else {

  while (test_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
   msleep(1);

  return -EALREADY;
 }
 return 0;
}
