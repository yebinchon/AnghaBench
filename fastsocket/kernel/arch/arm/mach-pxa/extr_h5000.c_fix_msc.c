
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDREFR ;
 int MSC0 ;
 int MSC1 ;
 int MSC2 ;

__attribute__((used)) static void fix_msc(void)
{
 MSC0 = 0x129c24f2;
 MSC1 = 0x7ff424fa;
 MSC2 = 0x7ff47ff4;

 MDREFR |= 0x02080000;
}
