
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int dprintk (char*) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_write_config_word (int ,int,int) ;
 int speedstep_chipset_dev ;

__attribute__((used)) static int speedstep_activate(void)
{
 u16 value = 0;

 if (!speedstep_chipset_dev)
  return -EINVAL;

 pci_read_config_word(speedstep_chipset_dev, 0x00A0, &value);
 if (!(value & 0x08)) {
  value |= 0x08;
  dprintk("activating SpeedStep (TM) registers\n");
  pci_write_config_word(speedstep_chipset_dev, 0x00A0, value);
 }

 return 0;
}
