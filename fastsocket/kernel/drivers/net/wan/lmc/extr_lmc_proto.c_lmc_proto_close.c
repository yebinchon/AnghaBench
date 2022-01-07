
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ if_type; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 scalar_t__ LMC_PPP ;
 int hdlc_close (int ) ;
 int lmc_trace (int ,char*) ;

void lmc_proto_close(lmc_softc_t *sc)
{
 lmc_trace(sc->lmc_device, "lmc_proto_close in");

 if (sc->if_type == LMC_PPP)
  hdlc_close(sc->lmc_device);

 lmc_trace(sc->lmc_device, "lmc_proto_close out");
}
