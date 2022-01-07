
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int RNR ;
 int RR ;
 int RSP ;
 int enquiry_cr (struct PStack*,int ,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
enquiry_response(struct PStack *st)
{
 if (test_bit(FLG_OWN_BUSY, &st->l2.flag))
  enquiry_cr(st, RNR, RSP, 1);
 else
  enquiry_cr(st, RR, RSP, 1);
 test_and_clear_bit(FLG_ACK_PEND, &st->l2.flag);
}
