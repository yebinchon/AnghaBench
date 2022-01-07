
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ cdi; scalar_t__ ms_offset; } ;
typedef TYPE_2__ Scsi_CD ;


 int CD_FRAMESIZE_RAW1 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SR_GFP_DMA (TYPE_2__*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int) ;
 int printk (char*,int ,int) ;
 scalar_t__ sr_read_sector (TYPE_2__*,scalar_t__,int ,unsigned char*) ;
 int xa_test ;

int sr_is_xa(Scsi_CD *cd)
{
 unsigned char *raw_sector;
 int is_xa;

 if (!xa_test)
  return 0;

 raw_sector = kmalloc(2048, GFP_KERNEL | SR_GFP_DMA(cd));
 if (!raw_sector)
  return -ENOMEM;
 if (0 == sr_read_sector(cd, cd->ms_offset + 16,
    CD_FRAMESIZE_RAW1, raw_sector)) {
  is_xa = (raw_sector[3] == 0x02) ? 1 : 0;
 } else {

  is_xa = -1;
 }
 kfree(raw_sector);



 return is_xa;
}
