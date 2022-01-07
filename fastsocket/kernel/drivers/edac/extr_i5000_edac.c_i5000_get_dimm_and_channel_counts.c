
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;


 int MAXCH ;
 int MAXDIMMPERCH ;
 int pci_read_config_byte (struct pci_dev*,int ,scalar_t__*) ;

__attribute__((used)) static void i5000_get_dimm_and_channel_counts(struct pci_dev *pdev,
     int *num_dimms_per_channel,
     int *num_channels)
{
 u8 value;




 pci_read_config_byte(pdev, MAXDIMMPERCH, &value);
 *num_dimms_per_channel = (int)value *2;

 pci_read_config_byte(pdev, MAXCH, &value);
 *num_channels = (int)value;
}
