
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cnic_sock {scalar_t__ state; int flags; } ;


 scalar_t__ L4_KCQE_OPCODE_VALUE_CLOSE_COMP ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_RESET_COMP ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_RESET_RECEIVED ;
 int SK_F_CLOSING ;
 int SK_F_OFFLD_COMPLETE ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int cnic_ready_to_close(struct cnic_sock *csk, u32 opcode)
{
 if (test_and_clear_bit(SK_F_OFFLD_COMPLETE, &csk->flags)) {

  opcode = L4_KCQE_OPCODE_VALUE_RESET_RECEIVED;
  csk->state = opcode;
 }







 if (opcode == csk->state || csk->state == 0 ||
     csk->state == L4_KCQE_OPCODE_VALUE_CLOSE_COMP ||
     csk->state == L4_KCQE_OPCODE_VALUE_RESET_COMP) {
  if (!test_and_set_bit(SK_F_CLOSING, &csk->flags)) {
   if (csk->state == 0)
    csk->state = opcode;
   return 1;
  }
 }
 return 0;
}
