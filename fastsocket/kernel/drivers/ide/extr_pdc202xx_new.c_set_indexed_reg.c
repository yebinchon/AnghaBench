
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;


 int DBG (char*,int ,int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void set_indexed_reg(ide_hwif_t *hwif, u8 index, u8 value)
{
 outb(index, hwif->dma_base + 1);
 outb(value, hwif->dma_base + 3);
 DBG("index[%02X] value[%02X]\n", index, value);
}
