
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tapeblock_major ;
 int unregister_blkdev (int ,char*) ;

void
tapeblock_exit(void)
{
 unregister_blkdev(tapeblock_major, "tBLK");
}
