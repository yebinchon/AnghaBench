
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {TYPE_1__* lg; } ;
struct TYPE_2__ {scalar_t__ mem_base; } ;


 scalar_t__ copy_from_user (void*,scalar_t__,unsigned int) ;
 int kill_guest (struct lg_cpu*,char*,unsigned long,unsigned int) ;
 int lguest_address_ok (TYPE_1__*,unsigned long,unsigned int) ;
 int memset (void*,int ,unsigned int) ;

void __lgread(struct lg_cpu *cpu, void *b, unsigned long addr, unsigned bytes)
{
 if (!lguest_address_ok(cpu->lg, addr, bytes)
     || copy_from_user(b, cpu->lg->mem_base + addr, bytes) != 0) {

  memset(b, 0, bytes);
  kill_guest(cpu, "bad read address %#lx len %u", addr, bytes);
 }
}
