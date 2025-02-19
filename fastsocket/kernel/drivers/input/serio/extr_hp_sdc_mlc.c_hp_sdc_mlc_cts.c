
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * semaphore; } ;
struct TYPE_7__ {int idx; int endidx; TYPE_1__ act; scalar_t__ actidx; } ;
struct hp_sdc_mlc_priv_s {int* tseq; TYPE_4__ trans; } ;
struct TYPE_6__ {int csem; int osem; int isem; struct hp_sdc_mlc_priv_s* priv; } ;
typedef TYPE_2__ hil_mlc ;


 int BUG_ON (scalar_t__) ;
 int HP_SDC_ACT_DATAIN ;
 int HP_SDC_ACT_POSTCMD ;
 int HP_SDC_ACT_SEMAPHORE ;
 int HP_SDC_CMD_READ_USE ;
 int HP_SDC_USE_LOOP ;
 int __hp_sdc_enqueue_transaction (TYPE_4__*) ;
 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

__attribute__((used)) static int hp_sdc_mlc_cts(hil_mlc *mlc)
{
 struct hp_sdc_mlc_priv_s *priv;

 priv = mlc->priv;


 BUG_ON(down_trylock(&mlc->isem));
 BUG_ON(down_trylock(&mlc->osem));

 up(&mlc->isem);
 up(&mlc->osem);

 if (down_trylock(&mlc->csem)) {
  if (priv->trans.act.semaphore != &mlc->csem)
   goto poll;
  else
   goto busy;
 }

 if (!(priv->tseq[4] & HP_SDC_USE_LOOP))
  goto done;

 poll:
 priv->trans.act.semaphore = &mlc->csem;
 priv->trans.actidx = 0;
 priv->trans.idx = 1;
 priv->trans.endidx = 5;
 priv->tseq[0] =
  HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN | HP_SDC_ACT_SEMAPHORE;
 priv->tseq[1] = HP_SDC_CMD_READ_USE;
 priv->tseq[2] = 1;
 priv->tseq[3] = 0;
 priv->tseq[4] = 0;
 __hp_sdc_enqueue_transaction(&priv->trans);
 busy:
 return 1;
 done:
 priv->trans.act.semaphore = &mlc->osem;
 up(&mlc->csem);
 return 0;
}
