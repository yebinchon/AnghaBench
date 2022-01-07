
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
typedef unsigned int u16 ;
typedef int rounding ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ hrz_dev ;


 unsigned long BR_HRZ ;
 unsigned long BR_ULT ;
 unsigned int CLOCK_SELECT_SHIFT ;
 unsigned int CR_MAXD ;
 unsigned int CR_MAXPEXP ;
 unsigned int CR_MIND ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_QOS ;
 unsigned int DIV_ROUND_CLOSEST (unsigned long const,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned long const,unsigned int) ;
 int EINVAL ;
 int PRINTD (int,char*,...) ;


 int round_up ;
 scalar_t__ test_bit (int ,int *) ;
 int ultra ;

__attribute__((used)) static int make_rate (const hrz_dev * dev, u32 c, rounding r,
        u16 * bits, unsigned int * actual)
{

 const unsigned long br = test_bit(ultra, &dev->flags) ? BR_ULT : BR_HRZ;

 u32 div = CR_MIND;
 u32 pre;





 unsigned long br_man = br;
 unsigned int br_exp = 0;

 PRINTD (DBG_QOS|DBG_FLOW, "make_rate b=%lu, c=%u, %s", br, c,
  r == round_up ? "up" : r == 129 ? "down" : "nearest");


 if (!c) {
  PRINTD (DBG_QOS|DBG_ERR, "zero rate is not allowed!");
  return -EINVAL;
 }

 while (br_exp < CR_MAXPEXP + CR_MIND && (br_man % 2 == 0)) {
  br_man = br_man >> 1;
  ++br_exp;
 }



 if (br_man <= (c << (CR_MAXPEXP+CR_MIND-br_exp))) {


  switch (r) {
   case 129:
    pre = DIV_ROUND_UP(br, c<<div);

    if (!pre)
     pre = 1;
    break;
   case 128:
    pre = DIV_ROUND_CLOSEST(br, c<<div);

    if (!pre)
     pre = 1;
    break;
   default:
    pre = br/(c<<div);

    if (!pre)
     return -EINVAL;
  }
  PRINTD (DBG_QOS, "A: p=%u, d=%u", pre, div);
  goto got_it;
 }



 while (div < CR_MAXD) {
  div++;
  if (br_man <= (c << (CR_MAXPEXP+div-br_exp))) {





   switch (r) {
    case 129:
     pre = DIV_ROUND_UP(br, c<<div);
     break;
    case 128:
     pre = DIV_ROUND_CLOSEST(br, c<<div);
     break;
    default:
     pre = br/(c<<div);
   }
   PRINTD (DBG_QOS, "B: p=%u, d=%u", pre, div);
   goto got_it;
  }
 }




 if (r == 129)
  return -EINVAL;
 pre = 1 << CR_MAXPEXP;
 PRINTD (DBG_QOS, "C: p=%u, d=%u", pre, div);
got_it:

 if (div > CR_MAXD || (!pre) || pre > 1<<CR_MAXPEXP) {
  PRINTD (DBG_QOS, "set_cr internal failure: d=%u p=%u",
   div, pre);
  return -EINVAL;
 } else {
  if (bits)
   *bits = (div<<CLOCK_SELECT_SHIFT) | (pre-1);
  if (actual) {
   *actual = DIV_ROUND_UP(br, pre<<div);
   PRINTD (DBG_QOS, "actual rate: %u", *actual);
  }
  return 0;
 }
}
