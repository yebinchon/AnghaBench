
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvbios_init {TYPE_2__* outp; } ;
struct TYPE_3__ {int link; } ;
struct TYPE_4__ {TYPE_1__ sorconf; } ;


 int error (char*) ;

__attribute__((used)) static inline int
init_link(struct nvbios_init *init)
{
 if (init->outp)
  return !(init->outp->sorconf.link & 1);
 error("script needs OR link\n");
 return 0;
}
