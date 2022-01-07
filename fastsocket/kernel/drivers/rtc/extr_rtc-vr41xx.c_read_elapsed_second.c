
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIMEHREG ;
 int ETIMELREG ;
 int ETIMEMREG ;
 unsigned long rtc1_read (int ) ;

__attribute__((used)) static inline unsigned long read_elapsed_second(void)
{

 unsigned long first_low, first_mid, first_high;

 unsigned long second_low, second_mid, second_high;

 do {
  first_low = rtc1_read(ETIMELREG);
  first_mid = rtc1_read(ETIMEMREG);
  first_high = rtc1_read(ETIMEHREG);
  second_low = rtc1_read(ETIMELREG);
  second_mid = rtc1_read(ETIMEMREG);
  second_high = rtc1_read(ETIMEHREG);
 } while (first_low != second_low || first_mid != second_mid ||
          first_high != second_high);

 return (first_high << 17) | (first_mid << 1) | (first_low >> 15);
}
