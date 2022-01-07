
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnptr {unsigned long ip; } ;



unsigned long arch_deref_entry_point(void *entry)
{
 return ((struct fnptr *)entry)->ip;
}
