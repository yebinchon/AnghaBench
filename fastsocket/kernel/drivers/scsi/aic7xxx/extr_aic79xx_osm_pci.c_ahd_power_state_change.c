
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dev_softc; } ;
typedef int ahd_power_state ;


 int pci_set_power_state (int ,int ) ;

void
ahd_power_state_change(struct ahd_softc *ahd, ahd_power_state new_state)
{
 pci_set_power_state(ahd->dev_softc, new_state);
}
