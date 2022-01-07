
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void tempudelay(int usecs)
{
 volatile int loops;

 for(loops = usecs * 12; loops > 0; loops--)
               ;
}
