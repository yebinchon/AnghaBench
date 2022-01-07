
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int dummy; } ;
struct TYPE_2__ {int (* machine_kexec ) (struct kimage*) ;} ;


 int default_machine_kexec (struct kimage*) ;
 int machine_restart (int *) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct kimage*) ;

void machine_kexec(struct kimage *image)
{
 if (ppc_md.machine_kexec)
  ppc_md.machine_kexec(image);
 else
  default_machine_kexec(image);


 machine_restart(((void*)0));
 for(;;);
}
