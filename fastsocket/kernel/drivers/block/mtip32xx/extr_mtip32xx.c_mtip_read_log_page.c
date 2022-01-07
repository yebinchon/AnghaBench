
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct host_to_dev_fis {int type; int opts; unsigned int sect_count; unsigned int sect_cnt_ex; int device; scalar_t__ lba_mid; int lba_low; int command; } ;
typedef struct host_to_dev_fis u16 ;
struct mtip_port {int dummy; } ;
typedef int dma_addr_t ;


 int ATA_CMD_READ_LOG_EXT ;
 int ATA_DEVICE_OBS ;
 unsigned int ATA_SECT_SIZE ;
 int GFP_ATOMIC ;
 int MTIP_INTERNAL_COMMAND_TIMEOUT_MS ;
 int memset (struct host_to_dev_fis*,int ,unsigned int) ;
 int mtip_exec_internal_command (struct mtip_port*,struct host_to_dev_fis*,int,int ,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int mtip_read_log_page(struct mtip_port *port, u8 page, u16 *buffer,
    dma_addr_t buffer_dma, unsigned int sectors)
{
 struct host_to_dev_fis fis;

 memset(&fis, 0, sizeof(struct host_to_dev_fis));
 fis.type = 0x27;
 fis.opts = 1 << 7;
 fis.command = ATA_CMD_READ_LOG_EXT;
 fis.sect_count = sectors & 0xFF;
 fis.sect_cnt_ex = (sectors >> 8) & 0xFF;
 fis.lba_low = page;
 fis.lba_mid = 0;
 fis.device = ATA_DEVICE_OBS;

 memset(buffer, 0, sectors * ATA_SECT_SIZE);

 return mtip_exec_internal_command(port,
     &fis,
     5,
     buffer_dma,
     sectors * ATA_SECT_SIZE,
     0,
     GFP_ATOMIC,
     MTIP_INTERNAL_COMMAND_TIMEOUT_MS);
}
