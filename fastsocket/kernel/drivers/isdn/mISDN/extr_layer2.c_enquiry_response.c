
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;


 int FLG_ACK_PEND ;
 int FLG_OWN_BUSY ;
 int RNR ;
 int RR ;
 int RSP ;
 int enquiry_cr (struct layer2*,int ,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

inline void
enquiry_response(struct layer2 *l2)
{
 if (test_bit(FLG_OWN_BUSY, &l2->flag))
  enquiry_cr(l2, RNR, RSP, 1);
 else
  enquiry_cr(l2, RR, RSP, 1);
 test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
}
