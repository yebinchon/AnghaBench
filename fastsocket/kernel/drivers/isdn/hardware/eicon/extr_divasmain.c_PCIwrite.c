
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dword ;
typedef int byte ;


 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 int pci_write_config_word (struct pci_dev*,int,unsigned short) ;

void PCIwrite(byte bus, byte func, int offset, void *data, int length,
       void *pci_dev_handle)
{
 struct pci_dev *dev = (struct pci_dev *) pci_dev_handle;

 switch (length) {
 case 1:
  pci_write_config_byte(dev, offset,
          *(unsigned char *) data);
  break;
 case 2:
  pci_write_config_word(dev, offset,
          *(unsigned short *) data);
  break;
 case 4:
  pci_write_config_dword(dev, offset,
           *(unsigned int *) data);
  break;

 default:
  if (!(length % 4) && !(length & 0x03)) {
   dword *p = (dword *) data;
   length /= 4;

   while (length--) {
    pci_write_config_dword(dev, offset,
             *(unsigned int *)
             p++);
   }
  } else {
   byte *p = (byte *) data;

   while (length--) {
    pci_write_config_byte(dev, offset,
            *(unsigned char *)
            p++);
   }
  }
 }
}
