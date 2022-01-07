
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {scalar_t__ offset; scalar_t__ repend; scalar_t__ repeat; } ;


 int trace (char*) ;

__attribute__((used)) static void
init_end_repeat(struct nvbios_init *init)
{
 trace("END_REPEAT\n");
 init->offset += 1;

 if (init->repeat) {
  init->repend = init->offset;
  init->offset = 0;
 }
}
