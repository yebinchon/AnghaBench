
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int lmc_intrmask; int lmc_busmode; int lmc_cmdmode; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 void* LMC_CSR_READ (TYPE_1__* const,int ) ;
 int LMC_CSR_WRITE (TYPE_1__* const,int ,int) ;
 int TULIP_BUSMODE_SWRESET ;
 int TULIP_CMD_FULLDUPLEX ;
 int TULIP_CMD_MUSTBEONE ;
 int TULIP_CMD_NOHEARTBEAT ;
 int TULIP_CMD_OPERMODE ;
 int TULIP_CMD_PASSBADPKT ;
 int TULIP_CMD_PORTSELECT ;
 int TULIP_CMD_PROMISCUOUS ;
 int TULIP_CMD_RECEIVEALL ;
 int TULIP_CMD_STOREFWD ;
 int TULIP_CMD_THRESHOLDCTL ;
 int TULIP_CMD_TXTHRSHLDCTL ;
 int TULIP_WATCHDOG_RXDISABLE ;
 int TULIP_WATCHDOG_TXDISABLE ;
 int csr_busmode ;
 int csr_command ;
 int csr_intr ;
 int csr_sia_general ;
 int lmc_trace (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void lmc_dec_reset(lmc_softc_t * const sc)
{
    u32 val;
    lmc_trace(sc->lmc_device, "lmc_dec_reset in");




    sc->lmc_intrmask = 0;
    LMC_CSR_WRITE(sc, csr_intr, sc->lmc_intrmask);







    LMC_CSR_WRITE(sc, csr_busmode, TULIP_BUSMODE_SWRESET);
    udelay(25);






    sc->lmc_cmdmode = LMC_CSR_READ(sc, csr_command);
    sc->lmc_cmdmode |= ( TULIP_CMD_PROMISCUOUS
                         | TULIP_CMD_FULLDUPLEX
                         | TULIP_CMD_PASSBADPKT
                         | TULIP_CMD_NOHEARTBEAT
                         | TULIP_CMD_PORTSELECT
                         | TULIP_CMD_RECEIVEALL
                         | TULIP_CMD_MUSTBEONE
                       );
    sc->lmc_cmdmode &= ~( TULIP_CMD_OPERMODE
                          | TULIP_CMD_THRESHOLDCTL
                          | TULIP_CMD_STOREFWD
                          | TULIP_CMD_TXTHRSHLDCTL
                        );

    LMC_CSR_WRITE(sc, csr_command, sc->lmc_cmdmode);




    val = LMC_CSR_READ(sc, csr_sia_general);
    val |= (TULIP_WATCHDOG_TXDISABLE | TULIP_WATCHDOG_RXDISABLE);
    LMC_CSR_WRITE(sc, csr_sia_general, val);

    lmc_trace(sc->lmc_device, "lmc_dec_reset out");
}
