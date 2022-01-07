
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int CMD ;
 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int RNR ;
 int RR ;
 int enquiry_cr (struct PStack*,int ,int ,int) ;
 int start_t200 (struct PStack*,int) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
transmit_enquiry(struct PStack *st)
{
 if (test_bit(FLG_OWN_BUSY, &st->l2.flag))
  enquiry_cr(st, RNR, CMD, 1);
 else
  enquiry_cr(st, RR, CMD, 1);
 test_and_clear_bit(FLG_ACK_PEND, &st->l2.flag);
 start_t200(st, 9);
}
