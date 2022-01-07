
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; int * origbytes; int * addr; } ;


 int EFAULT ;
 int ENOENT ;
 int gdbstub_bkpt (char*,int *,int) ;
 TYPE_1__* gdbstub_bkpts ;
 int gdbstub_flush_caches ;
 scalar_t__ gdbstub_write_byte (int ,int *) ;

int gdbstub_clear_breakpoint(u8 *addr, int len)
{
 int bkpt, loop;





 gdbstub_bkpt("clearbkpt(%p,%d)\n", addr, len);

 for (bkpt = 255; bkpt >= 0; bkpt--)
  if (gdbstub_bkpts[bkpt].addr == addr &&
      gdbstub_bkpts[bkpt].len == len)
   break;
 if (bkpt < 0)
  return -ENOENT;

 gdbstub_bkpts[bkpt].addr = ((void*)0);

 gdbstub_flush_caches = 1;

 for (loop = 0; loop < len; loop++)
  if (gdbstub_write_byte(gdbstub_bkpts[bkpt].origbytes[loop],
           addr + loop) < 0)
   return -EFAULT;

 return 0;
}
