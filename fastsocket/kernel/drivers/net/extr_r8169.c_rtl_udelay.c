
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (unsigned int) ;

__attribute__((used)) static void rtl_udelay(unsigned int d)
{
 udelay(d);
}
