
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dev_softc; } ;
typedef scalar_t__ resource_size_t ;


 int ENOMEM ;
 scalar_t__ aic7xxx_allow_memio ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int request_region (scalar_t__,int,char*) ;

__attribute__((used)) static int
ahc_linux_pci_reserve_io_region(struct ahc_softc *ahc, resource_size_t *base)
{
 if (aic7xxx_allow_memio == 0)
  return (ENOMEM);

 *base = pci_resource_start(ahc->dev_softc, 0);
 if (*base == 0)
  return (ENOMEM);
 if (!request_region(*base, 256, "aic7xxx"))
  return (ENOMEM);
 return (0);
}
