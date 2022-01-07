
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int bitmap_scnlistprintf (char*,int ,int ,int ) ;
 int map_size ;
 int map_storep ;
 int scnprintf (char*,int ,char*,int ) ;
 int scsi_debug_lbp () ;
 int sdebug_store_sectors ;

__attribute__((used)) static ssize_t sdebug_map_show(struct device_driver *ddp, char *buf)
{
 ssize_t count;

 if (!scsi_debug_lbp())
  return scnprintf(buf, PAGE_SIZE, "0-%u\n",
     sdebug_store_sectors);

 count = bitmap_scnlistprintf(buf, PAGE_SIZE, map_storep, map_size);

 buf[count++] = '\n';
 buf[count++] = 0;

 return count;
}
