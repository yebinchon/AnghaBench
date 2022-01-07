
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int MFC_STATE1_BUS_TLBIE_MASK ;
 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ;
 int MFC_STATE1_RELOCATE_MASK ;
 int spu_mfc_sr1_set (struct spu*,int) ;

__attribute__((used)) static inline void setup_mfc_sr1(struct spu_state *csa, struct spu *spu)
{
 spu_mfc_sr1_set(spu, (MFC_STATE1_MASTER_RUN_CONTROL_MASK |
         MFC_STATE1_RELOCATE_MASK |
         MFC_STATE1_BUS_TLBIE_MASK));
}
