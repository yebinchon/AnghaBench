
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SWITCHER_ADDR ;
 scalar_t__ start_switcher_text ;

__attribute__((used)) static unsigned long switcher_offset(void)
{
 return SWITCHER_ADDR - (unsigned long)start_switcher_text;
}
