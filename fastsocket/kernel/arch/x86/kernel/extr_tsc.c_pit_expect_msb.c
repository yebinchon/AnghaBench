
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long get_cycles () ;
 int pit_verify_msb (unsigned char) ;

__attribute__((used)) static inline int pit_expect_msb(unsigned char val, u64 *tscp, unsigned long *deltap)
{
 int count;
 u64 tsc = 0, prev_tsc = 0;

 for (count = 0; count < 50000; count++) {
  if (!pit_verify_msb(val))
   break;
  prev_tsc = tsc;
  tsc = get_cycles();
 }
 *deltap = get_cycles() - prev_tsc;
 *tscp = tsc;





 return count > 5;
}
