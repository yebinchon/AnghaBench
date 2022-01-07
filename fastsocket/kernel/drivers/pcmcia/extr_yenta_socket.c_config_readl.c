
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yenta_socket {int dev; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int pci_read_config_dword (int ,unsigned int,int *) ;

__attribute__((used)) static inline u32 config_readl(struct yenta_socket *socket, unsigned offset)
{
 u32 val;
 pci_read_config_dword(socket->dev, offset, &val);
 debug("%04x %08x\n", socket, offset, val);
 return val;
}
