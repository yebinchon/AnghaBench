
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ addr_len; scalar_t__ hard_header_len; int flags; } ;
struct TYPE_3__ {scalar_t__ if_type; struct net_device* lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 int IFF_POINTOPOINT ;
 scalar_t__ LMC_NET ;
 int lmc_trace (struct net_device*,char*) ;

void lmc_proto_attach(lmc_softc_t *sc)
{
    lmc_trace(sc->lmc_device, "lmc_proto_attach in");
    if (sc->if_type == LMC_NET) {
            struct net_device *dev = sc->lmc_device;



            dev->flags |= IFF_POINTOPOINT;
            dev->hard_header_len = 0;
            dev->addr_len = 0;
        }
    lmc_trace(sc->lmc_device, "lmc_proto_attach out");
}
