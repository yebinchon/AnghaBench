
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int RR ;
 int RSP ;
 int enquiry_cr (struct PStack*,int ,int ,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_clear_own_busy(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if(!test_and_clear_bit(FLG_OWN_BUSY, &st->l2.flag)) {
  enquiry_cr(st, RR, RSP, 0);
  test_and_clear_bit(FLG_ACK_PEND, &st->l2.flag);
 }
}
