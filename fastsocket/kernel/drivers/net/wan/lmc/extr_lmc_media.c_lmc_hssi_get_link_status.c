
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lmc_softc_t ;


 int lmc_ssi_get_link_status (int * const) ;

__attribute__((used)) static int
lmc_hssi_get_link_status (lmc_softc_t * const sc)
{




    return lmc_ssi_get_link_status(sc);
}
