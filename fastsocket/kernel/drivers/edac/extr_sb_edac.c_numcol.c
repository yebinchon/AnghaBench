
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int COL_WIDTH_BITS (int ) ;
 int EINVAL ;
 int debugf0 (char*,int,unsigned int,int ) ;

__attribute__((used)) static inline int numcol(u32 mtr)
{
 int cols = (COL_WIDTH_BITS(mtr) + 10);

 if (cols > 12) {
  debugf0("Invalid number of cols: %d (max = 4) raw value = %x (%04x)",
   cols, (unsigned int)COL_WIDTH_BITS(mtr), mtr);
  return -EINVAL;
 }

 return 1 << cols;
}
