
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 int LMC_CSR_WRITE (TYPE_1__* const,int ,int) ;
 int LMC_MII_SYNC (TYPE_1__* const) ;
 int csr_9 ;
 int lmc_delay () ;
 int lmc_trace (int ,char*) ;

void lmc_mii_writereg (lmc_softc_t * const sc, unsigned devaddr, unsigned regno, unsigned data)
{
    int i = 32;
    int command = (0x5002 << 16) | (devaddr << 23) | (regno << 18) | data;

    lmc_trace(sc->lmc_device, "lmc_mii_writereg in");

    LMC_MII_SYNC (sc);

    i = 31;
    while (i >= 0)
    {
        int datav;

        if (command & (1 << i))
            datav = 0x20000;
        else
            datav = 0x00000;

        LMC_CSR_WRITE (sc, csr_9, datav);
        lmc_delay ();

        LMC_CSR_WRITE (sc, csr_9, (datav | 0x10000));
        lmc_delay ();

        i--;
    }

    i = 2;
    while (i > 0)
    {
        LMC_CSR_WRITE (sc, csr_9, 0x40000);
        lmc_delay ();

        LMC_CSR_WRITE (sc, csr_9, 0x50000);
        lmc_delay ();

        i--;
    }

    lmc_trace(sc->lmc_device, "lmc_mii_writereg out");
}
