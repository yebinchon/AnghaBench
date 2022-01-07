
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int __u8 ;
typedef int __u16 ;


 int DCB_CREDIT_QUANTUM ;
 int MAX_CREDIT ;
 int MAX_CREDIT_REFILL ;
 int MAX_TRAFFIC_CLASS ;
 int min (int,int ) ;

__attribute__((used)) static s32 ixgbe_ieee_credits(__u8 *bw, __u16 *refill,
         __u16 *max, int max_frame)
{
 int min_percent = 100;
 int min_credit, multiplier;
 int i;

 min_credit = ((max_frame / 2) + DCB_CREDIT_QUANTUM - 1) /
   DCB_CREDIT_QUANTUM;

 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  if (bw[i] < min_percent && bw[i])
   min_percent = bw[i];
 }

 multiplier = (min_credit / min_percent) + 1;


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  int val = min(bw[i] * multiplier, MAX_CREDIT_REFILL);

  if (val < min_credit)
   val = min_credit;
  refill[i] = val;

  max[i] = bw[i] ? (bw[i] * MAX_CREDIT)/100 : min_credit;
 }
 return 0;
}
