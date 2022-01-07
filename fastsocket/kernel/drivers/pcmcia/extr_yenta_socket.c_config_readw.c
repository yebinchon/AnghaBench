
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct yenta_socket {int dev; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int pci_read_config_word (int ,unsigned int,int *) ;

__attribute__((used)) static inline u16 config_readw(struct yenta_socket *socket, unsigned offset)
{
 u16 val;
 pci_read_config_word(socket->dev, offset, &val);
 debug("%04x %04x\n", socket, offset, val);
 return val;
}
