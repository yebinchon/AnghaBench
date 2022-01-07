
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int offset; } ;


 int trace (char*) ;

__attribute__((used)) static void
init_done(struct nvbios_init *init)
{
 trace("DONE\n");
 init->offset = 0x0000;
}
