
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int PROG_INTERFACE ;
 int SEC_BUS_CONFIG ;
 int ctrl_dbg (struct controller*,char*,int) ;
 int shpc_readb (struct controller*,int ) ;
 int shpc_readw (struct controller*,int ) ;

__attribute__((used)) static int hpc_get_mode1_ECC_cap(struct slot *slot, u8 *mode)
{
 int retval = 0;
 struct controller *ctrl = slot->ctrl;
 u16 sec_bus_status = shpc_readw(ctrl, SEC_BUS_CONFIG);
 u8 pi = shpc_readb(ctrl, PROG_INTERFACE);

 if (pi == 2) {
  *mode = (sec_bus_status & 0x0100) >> 8;
 } else {
  retval = -1;
 }

 ctrl_dbg(ctrl, "Mode 1 ECC cap = %d\n", *mode);
 return retval;
}
