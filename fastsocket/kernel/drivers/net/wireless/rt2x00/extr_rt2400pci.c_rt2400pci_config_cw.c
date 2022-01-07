
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int CSR11 ;
 int CSR11_CWMAX ;
 int CSR11_CWMIN ;
 int rt2x00_set_field32 (int *,int ,int const) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2400pci_config_cw(struct rt2x00_dev *rt2x00dev,
    const int cw_min, const int cw_max)
{
 u32 reg;

 rt2x00mmio_register_read(rt2x00dev, CSR11, &reg);
 rt2x00_set_field32(&reg, CSR11_CWMIN, cw_min);
 rt2x00_set_field32(&reg, CSR11_CWMAX, cw_max);
 rt2x00mmio_register_write(rt2x00dev, CSR11, reg);
}
