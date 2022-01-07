
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_mem_addr; scalar_t__ io_mem_length; } ;
typedef TYPE_1__ ctlr_info_t ;


 int release_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static void release_io_mem(ctlr_info_t *c)
{

 if( c->io_mem_addr == 0)
  return;
 release_region(c->io_mem_addr, c->io_mem_length);
 c->io_mem_addr = 0;
 c->io_mem_length = 0;
}
