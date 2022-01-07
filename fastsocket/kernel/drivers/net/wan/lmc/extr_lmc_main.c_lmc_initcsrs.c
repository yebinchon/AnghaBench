
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* csr_15; void* csr_14; void* csr_13; void* csr_12; void* csr_11; void* csr_10; void* csr_9; void* csr_missed_frames; void* csr_intr; void* csr_command; void* csr_status; void* csr_txlist; void* csr_rxlist; void* csr_rxpoll; void* csr_txpoll; void* csr_busmode; } ;
struct TYPE_5__ {int lmc_device; TYPE_1__ lmc_csrs; } ;
typedef TYPE_2__ lmc_softc_t ;
typedef void* lmc_csrptr_t ;


 int lmc_trace (int ,char*) ;

__attribute__((used)) static void lmc_initcsrs(lmc_softc_t * const sc, lmc_csrptr_t csr_base,
                         size_t csr_size)
{
    lmc_trace(sc->lmc_device, "lmc_initcsrs in");
    sc->lmc_csrs.csr_busmode = csr_base + 0 * csr_size;
    sc->lmc_csrs.csr_txpoll = csr_base + 1 * csr_size;
    sc->lmc_csrs.csr_rxpoll = csr_base + 2 * csr_size;
    sc->lmc_csrs.csr_rxlist = csr_base + 3 * csr_size;
    sc->lmc_csrs.csr_txlist = csr_base + 4 * csr_size;
    sc->lmc_csrs.csr_status = csr_base + 5 * csr_size;
    sc->lmc_csrs.csr_command = csr_base + 6 * csr_size;
    sc->lmc_csrs.csr_intr = csr_base + 7 * csr_size;
    sc->lmc_csrs.csr_missed_frames = csr_base + 8 * csr_size;
    sc->lmc_csrs.csr_9 = csr_base + 9 * csr_size;
    sc->lmc_csrs.csr_10 = csr_base + 10 * csr_size;
    sc->lmc_csrs.csr_11 = csr_base + 11 * csr_size;
    sc->lmc_csrs.csr_12 = csr_base + 12 * csr_size;
    sc->lmc_csrs.csr_13 = csr_base + 13 * csr_size;
    sc->lmc_csrs.csr_14 = csr_base + 14 * csr_size;
    sc->lmc_csrs.csr_15 = csr_base + 15 * csr_size;
    lmc_trace(sc->lmc_device, "lmc_initcsrs out");
}
