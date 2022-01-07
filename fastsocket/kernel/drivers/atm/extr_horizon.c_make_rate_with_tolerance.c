
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
typedef scalar_t__ rounding ;
typedef int hrz_dev ;


 int DBG_FLOW ;
 int DBG_QOS ;
 int PRINTD (int,char*,unsigned int,char*,unsigned int) ;
 int make_rate (int const*,unsigned int,scalar_t__,int *,unsigned int*) ;
 scalar_t__ round_down ;
 scalar_t__ round_nearest ;
 scalar_t__ round_up ;

__attribute__((used)) static int make_rate_with_tolerance (const hrz_dev * dev, u32 c, rounding r, unsigned int tol,
         u16 * bit_pattern, unsigned int * actual) {
  unsigned int my_actual;

  PRINTD (DBG_QOS|DBG_FLOW, "make_rate_with_tolerance c=%u, %s, tol=%u",
   c, (r == round_up) ? "up" : (r == round_down) ? "down" : "nearest", tol);

  if (!actual)

    actual = &my_actual;

  if (make_rate (dev, c, round_nearest, bit_pattern, actual))

    return -1;

  if (c - tol <= *actual && *actual <= c + tol)

    return 0;
  else

    return make_rate (dev, c, r, bit_pattern, actual);
}
