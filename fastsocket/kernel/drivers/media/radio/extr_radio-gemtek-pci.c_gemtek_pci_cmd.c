
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int __gemtek_pci_cmd (int ,int ,int *,int) ;

__attribute__((used)) static inline void gemtek_pci_cmd(u16 cmd, u32 port, u8 *last_byte)
{
 __gemtek_pci_cmd(cmd, port, last_byte, 1);
}
