
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int reg_addr_requested; int init_error; int phys_reg_addr; int device_name; int reg_addr; } ;


 int DBGERR (char*) ;
 int DiagStatus_AddressConflict ;
 int DiagStatus_CantAssignPciResources ;
 int ENODEV ;
 int SLGT_REG_SIZE ;
 int ioremap_nocache (int ,int ) ;
 int release_resources (struct slgt_info*) ;
 int * request_mem_region (int ,int ,char*) ;

__attribute__((used)) static int claim_resources(struct slgt_info *info)
{
 if (request_mem_region(info->phys_reg_addr, SLGT_REG_SIZE, "synclink_gt") == ((void*)0)) {
  DBGERR(("%s reg addr conflict, addr=%08X\n",
   info->device_name, info->phys_reg_addr));
  info->init_error = DiagStatus_AddressConflict;
  goto errout;
 }
 else
  info->reg_addr_requested = 1;

 info->reg_addr = ioremap_nocache(info->phys_reg_addr, SLGT_REG_SIZE);
 if (!info->reg_addr) {
  DBGERR(("%s cant map device registers, addr=%08X\n",
   info->device_name, info->phys_reg_addr));
  info->init_error = DiagStatus_CantAssignPciResources;
  goto errout;
 }
 return 0;

errout:
 release_resources(info);
 return -ENODEV;
}
