
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int dummy; } ;
struct TYPE_2__ {int (* machine_kexec_cleanup ) (struct kimage*) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct kimage*) ;

void machine_kexec_cleanup(struct kimage *image)
{
 if (ppc_md.machine_kexec_cleanup)
  ppc_md.machine_kexec_cleanup(image);
}
