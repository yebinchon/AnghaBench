
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hflags; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; } ;


 int HF_GIF_MASK ;

__attribute__((used)) static inline void disable_gif(struct vcpu_svm *svm)
{
 svm->vcpu.arch.hflags &= ~HF_GIF_MASK;
}
