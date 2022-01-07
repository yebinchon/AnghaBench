
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct eeprom_93cx6 {int reg_data_in; int reg_data_out; int reg_data_clock; int reg_chip_select; struct rt2x00_dev* data; } ;


 int E2PROM_CSR ;
 int E2PROM_CSR_CHIP_SELECT ;
 int E2PROM_CSR_DATA_CLOCK ;
 int E2PROM_CSR_DATA_IN ;
 int E2PROM_CSR_DATA_OUT ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;

__attribute__((used)) static void rt61pci_eepromregister_read(struct eeprom_93cx6 *eeprom)
{
 struct rt2x00_dev *rt2x00dev = eeprom->data;
 u32 reg;

 rt2x00mmio_register_read(rt2x00dev, E2PROM_CSR, &reg);

 eeprom->reg_data_in = !!rt2x00_get_field32(reg, E2PROM_CSR_DATA_IN);
 eeprom->reg_data_out = !!rt2x00_get_field32(reg, E2PROM_CSR_DATA_OUT);
 eeprom->reg_data_clock =
     !!rt2x00_get_field32(reg, E2PROM_CSR_DATA_CLOCK);
 eeprom->reg_chip_select =
     !!rt2x00_get_field32(reg, E2PROM_CSR_CHIP_SELECT);
}
