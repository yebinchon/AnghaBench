
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 int free_transition_pgtable (struct kimage*) ;

void machine_kexec_cleanup(struct kimage *image)
{
 free_transition_pgtable(image);
}
