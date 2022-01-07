
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_chip_id {int oc; } ;
struct TYPE_2__ {int oc; } ;


 TYPE_1__ omap_chip ;

int omap_chip_is(struct omap_chip_id oci)
{
 return (oci.oc & omap_chip.oc) ? 1 : 0;
}
