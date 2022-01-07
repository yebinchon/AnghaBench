
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ REG_RD (struct bnx2x*,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static inline u32 reg_poll(struct bnx2x *bp, u32 reg, u32 expected, int ms,
      int wait)
{
 u32 val;

 do {
  val = REG_RD(bp, reg);
  if (val == expected)
   break;
  ms -= wait;
  msleep(wait);

 } while (ms > 0);

 return val;
}
