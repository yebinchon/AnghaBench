
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ start; } ;


 int EINVAL ;
 scalar_t__ PHYSADDR (scalar_t__) ;

int machine_kexec_prepare(struct kimage *image)
{



 if (image->start != PHYSADDR(image->start))
  return -EINVAL;

 return 0;
}
