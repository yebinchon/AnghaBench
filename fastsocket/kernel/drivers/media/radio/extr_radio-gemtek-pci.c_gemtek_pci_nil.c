
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int __gemtek_pci_cmd (int,int ,int *,int) ;

__attribute__((used)) static inline void gemtek_pci_nil(u32 port, u8 *last_byte)
{
 __gemtek_pci_cmd(0x00, port, last_byte, 0);
}
