
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct agp_bridge_data {int dummy; } ;
struct _parisc_agp_info {scalar_t__ lba_cap_offset; scalar_t__ lba_regs; } ;


 int AGP8X_MODE ;
 scalar_t__ PCI_AGP_COMMAND ;
 scalar_t__ PCI_AGP_STATUS ;
 int agp_collect_device_status (struct agp_bridge_data*,int,int) ;
 int agp_device_command (int,int) ;
 struct _parisc_agp_info parisc_agp_info ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
parisc_agp_enable(struct agp_bridge_data *bridge, u32 mode)
{
 struct _parisc_agp_info *info = &parisc_agp_info;
 u32 command;

 command = readl(info->lba_regs + info->lba_cap_offset + PCI_AGP_STATUS);

 command = agp_collect_device_status(bridge, mode, command);
 command |= 0x00000100;

 writel(command, info->lba_regs + info->lba_cap_offset + PCI_AGP_COMMAND);

 agp_device_command(command, (mode & AGP8X_MODE) != 0);
}
