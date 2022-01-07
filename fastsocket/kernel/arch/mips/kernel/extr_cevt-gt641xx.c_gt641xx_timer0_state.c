
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GT_READ (int ) ;
 int GT_TC0_OFS ;
 int GT_TC_CONTROL_ENTC0_MSK ;
 int GT_TC_CONTROL_OFS ;
 int GT_WRITE (int ,int) ;
 int HZ ;
 int gt641xx_base_clock ;

int gt641xx_timer0_state(void)
{
 if (GT_READ(GT_TC0_OFS))
  return 0;

 GT_WRITE(GT_TC0_OFS, gt641xx_base_clock / HZ);
 GT_WRITE(GT_TC_CONTROL_OFS, GT_TC_CONTROL_ENTC0_MSK);

 return 1;
}
