
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yenta_socket {int dev; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int pci_write_config_dword (int ,unsigned int,int ) ;

__attribute__((used)) static inline void config_writel(struct yenta_socket *socket, unsigned offset, u32 val)
{
 debug("%04x %08x\n", socket, offset, val);
 pci_write_config_dword(socket->dev, offset, val);
}
