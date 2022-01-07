
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ circuit_type; } ;
struct TYPE_14__ {TYPE_1__* lmc_media; TYPE_2__ ictl; } ;
typedef TYPE_3__ lmc_softc_t ;
struct TYPE_15__ {scalar_t__ circuit_type; } ;
typedef TYPE_4__ lmc_ctl_t ;
struct TYPE_12__ {int (* set_circuit_type ) (TYPE_3__* const,scalar_t__) ;} ;


 scalar_t__ LMC_CTL_CIRCUIT_TYPE_E1 ;
 scalar_t__ LMC_CTL_CIRCUIT_TYPE_T1 ;
 int lmc_set_protocol (TYPE_3__* const,TYPE_4__*) ;
 int stub1 (TYPE_3__* const,scalar_t__) ;
 int stub2 (TYPE_3__* const,scalar_t__) ;
 int stub3 (TYPE_3__* const,scalar_t__) ;

__attribute__((used)) static void
lmc_t1_set_status (lmc_softc_t * const sc, lmc_ctl_t * ctl)
{
  if (ctl == ((void*)0))
    {
      sc->lmc_media->set_circuit_type (sc, sc->ictl.circuit_type);
      lmc_set_protocol (sc, ((void*)0));

      return;
    }


  if (ctl->circuit_type == LMC_CTL_CIRCUIT_TYPE_T1
      && sc->ictl.circuit_type ==
      LMC_CTL_CIRCUIT_TYPE_E1) sc->lmc_media->set_circuit_type (sc,
        LMC_CTL_CIRCUIT_TYPE_E1);
  else if (ctl->circuit_type == LMC_CTL_CIRCUIT_TYPE_E1
    && sc->ictl.circuit_type == LMC_CTL_CIRCUIT_TYPE_T1)
    sc->lmc_media->set_circuit_type (sc, LMC_CTL_CIRCUIT_TYPE_T1);
  lmc_set_protocol (sc, ctl);
}
