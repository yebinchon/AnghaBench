
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int check_save_status (struct spu_state*,struct spu*) ;
 int harvest (struct spu_state*,struct spu*) ;
 int quiece_spu (struct spu_state*,struct spu*) ;
 int save_csa (struct spu_state*,struct spu*) ;
 int save_lscsa (struct spu_state*,struct spu*) ;

__attribute__((used)) static int __do_spu_save(struct spu_state *prev, struct spu *spu)
{
 int rc;
 rc = quiece_spu(prev, spu);
 switch (rc) {
 default:
 case 2:
 case 6:
  harvest(prev, spu);
  return rc;
  break;
 case 0:
  break;
 }
 save_csa(prev, spu);
 save_lscsa(prev, spu);
 return check_save_status(prev, spu);
}
