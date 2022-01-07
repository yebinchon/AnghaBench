
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int lscsa; } ;
struct spu {int dummy; } ;


 int spu_invalidate_slbs (struct spu*) ;
 int spu_setup_kernel_slbs (struct spu*,int ,unsigned int*,int) ;

__attribute__((used)) static inline void setup_mfc_slbs(struct spu_state *csa, struct spu *spu,
  unsigned int *code, int code_size)
{
 spu_invalidate_slbs(spu);
 spu_setup_kernel_slbs(spu, csa->lscsa, code, code_size);
}
