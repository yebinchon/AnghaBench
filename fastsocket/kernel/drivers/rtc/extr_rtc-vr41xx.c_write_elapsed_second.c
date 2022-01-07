
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ETIMEHREG ;
 int ETIMELREG ;
 int ETIMEMREG ;
 int rtc1_write (int ,int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void write_elapsed_second(unsigned long sec)
{
 spin_lock_irq(&rtc_lock);

 rtc1_write(ETIMELREG, (uint16_t)(sec << 15));
 rtc1_write(ETIMEMREG, (uint16_t)(sec >> 1));
 rtc1_write(ETIMEHREG, (uint16_t)(sec >> 17));

 spin_unlock_irq(&rtc_lock);
}
