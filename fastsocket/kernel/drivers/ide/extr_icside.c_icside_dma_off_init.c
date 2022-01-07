
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_port_info {int dummy; } ;
typedef int ide_hwif_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static int icside_dma_off_init(ide_hwif_t *hwif, const struct ide_port_info *d)
{
 return -EOPNOTSUPP;
}
