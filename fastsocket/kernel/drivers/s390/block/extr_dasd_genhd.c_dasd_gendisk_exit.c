
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DASD_MAJOR ;
 int unregister_blkdev (int ,char*) ;

void dasd_gendisk_exit(void)
{
 unregister_blkdev(DASD_MAJOR, "dasd");
}
