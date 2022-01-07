
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SRSTR ;
 int UBOARDREG (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void urquell_power_off(void)
{
 __raw_writew(0xa5a5, UBOARDREG(SRSTR));
}
