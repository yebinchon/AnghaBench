
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long current_cr0 ;

__attribute__((used)) static unsigned long lguest_read_cr0(void)
{
 return current_cr0;
}
