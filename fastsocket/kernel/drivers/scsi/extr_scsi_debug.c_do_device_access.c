
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 unsigned int do_div (unsigned long long,unsigned int) ;
 unsigned char* fake_storep ;
 int fetch_to_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 unsigned int scsi_debug_sector_size ;
 unsigned int sdebug_store_sectors ;

__attribute__((used)) static int do_device_access(struct scsi_cmnd *scmd,
       struct sdebug_dev_info *devi,
       unsigned long long lba, unsigned int num, int write)
{
 int ret;
 unsigned int block, rest = 0;
 int (*func)(struct scsi_cmnd *, unsigned char *, int);

 func = write ? fetch_to_dev_buffer : fill_from_dev_buffer;

 block = do_div(lba, sdebug_store_sectors);
 if (block + num > sdebug_store_sectors)
  rest = block + num - sdebug_store_sectors;

 ret = func(scmd, fake_storep + (block * scsi_debug_sector_size),
     (num - rest) * scsi_debug_sector_size);
 if (!ret && rest)
  ret = func(scmd, fake_storep, rest * scsi_debug_sector_size);

 return ret;
}
