
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_getc_poll () ;

int xmon_read_poll(void)
{
 if (udbg_getc_poll)
  return udbg_getc_poll();
 return -1;
}
