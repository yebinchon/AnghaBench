
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int detect_memory_88 () ;
 int detect_memory_e801 () ;
 scalar_t__ detect_memory_e820 () ;

int detect_memory(void)
{
 int err = -1;

 if (detect_memory_e820() > 0)
  err = 0;

 if (!detect_memory_e801())
  err = 0;

 if (!detect_memory_88())
  err = 0;

 return err;
}
