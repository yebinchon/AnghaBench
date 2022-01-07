
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int eieio () ;
 int spu_mfc_tclass_id_set (struct spu*,int) ;

__attribute__((used)) static inline void set_mfc_tclass_id(struct spu_state *csa, struct spu *spu)
{





 spu_mfc_tclass_id_set(spu, 0x10000000);
 eieio();
}
