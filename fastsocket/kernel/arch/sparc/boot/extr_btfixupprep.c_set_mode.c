
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal () ;
 size_t mode ;

__attribute__((used)) static void set_mode (char *buffer)
{
   for (mode = 0;; mode++)
  if (buffer[mode] < '0' || buffer[mode] > '9')
   break;
 if (mode != 8 && mode != 16)
  fatal();
}
