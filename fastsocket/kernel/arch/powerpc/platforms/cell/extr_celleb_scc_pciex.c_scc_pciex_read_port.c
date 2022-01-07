
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pci_controller {int cfg_addr; } ;


 int BUG_ON (int) ;
 int PEXDADRS ;
 int PEXDCMND ;
 unsigned int PEXDCMND_BYTE_EN_SHIFT ;
 unsigned int PEXDCMND_IO_READ ;
 int PEXDRDATA ;
 unsigned int PEX_IN (int ,int ) ;
 int PEX_OUT (int ,int ,unsigned int) ;
 unsigned long get_bus_address (struct pci_controller*,unsigned long) ;
 int pr_debug (char*,unsigned long,unsigned long,int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static u32 scc_pciex_read_port(struct pci_controller *phb,
          unsigned long port, int size)
{
 unsigned int byte_enable;
 unsigned int cmd, shift;
 unsigned long addr;
 u32 data, ret;

 BUG_ON(((port & 0x3ul) + size) > 4);

 addr = get_bus_address(phb, port);
 shift = addr & 0x3ul;
 byte_enable = ((1 << size) - 1) << shift;
 cmd = PEXDCMND_IO_READ | (byte_enable << PEXDCMND_BYTE_EN_SHIFT);
 PEX_OUT(phb->cfg_addr, PEXDADRS, (addr & ~0x3ul));
 PEX_OUT(phb->cfg_addr, PEXDCMND, cmd);
 data = PEX_IN(phb->cfg_addr, PEXDRDATA);
 ret = (data >> (shift * 8)) & (0xFFFFFFFF >> ((4 - size) * 8));

 pr_debug("PCIEX:PIO READ:port=0x%lx, addr=0x%lx, size=%d, be=%x,"
   " cmd=%x, data=%x, ret=%x\n", port, addr, size, byte_enable,
   cmd, data, ret);

 return ret;
}
