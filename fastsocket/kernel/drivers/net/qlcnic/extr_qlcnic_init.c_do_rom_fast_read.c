
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int QLCNIC_ROMUSB_ROM_ABYTE_CNT ;
 int QLCNIC_ROMUSB_ROM_ADDRESS ;
 int QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT ;
 int QLCNIC_ROMUSB_ROM_INSTR_OPCODE ;
 int QLCNIC_ROMUSB_ROM_RDATA ;
 int QLCRD32 (struct qlcnic_adapter*,int ) ;
 int QLCWR32 (struct qlcnic_adapter*,int ,int) ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_wait_rom_done (struct qlcnic_adapter*) ;
 int udelay (int) ;

__attribute__((used)) static int do_rom_fast_read(struct qlcnic_adapter *adapter,
       u32 addr, u32 *valp)
{
 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_ADDRESS, addr);
 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_ABYTE_CNT, 3);
 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_INSTR_OPCODE, 0xb);
 if (qlcnic_wait_rom_done(adapter)) {
  dev_err(&adapter->pdev->dev, "Error waiting for rom done\n");
  return -EIO;
 }

 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_ABYTE_CNT, 0);
 udelay(10);
 QLCWR32(adapter, QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);

 *valp = QLCRD32(adapter, QLCNIC_ROMUSB_ROM_RDATA);
 return 0;
}
