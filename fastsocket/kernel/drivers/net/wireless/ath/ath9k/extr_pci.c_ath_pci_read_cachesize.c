
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath_softc {int dev; } ;
struct ath_common {scalar_t__ priv; } ;


 int DEFAULT_CACHELINE ;
 int PCI_CACHE_LINE_SIZE ;
 int pci_read_config_byte (int ,int ,scalar_t__*) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void ath_pci_read_cachesize(struct ath_common *common, int *csz)
{
 struct ath_softc *sc = (struct ath_softc *) common->priv;
 u8 u8tmp;

 pci_read_config_byte(to_pci_dev(sc->dev), PCI_CACHE_LINE_SIZE, &u8tmp);
 *csz = (int)u8tmp;







 if (*csz == 0)
  *csz = DEFAULT_CACHELINE >> 2;
}
