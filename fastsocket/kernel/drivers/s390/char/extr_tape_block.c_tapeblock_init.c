
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_blkdev (int,char*) ;
 int tapeblock_major ;

int
tapeblock_init(void)
{
 int rc;


 rc = register_blkdev(tapeblock_major, "tBLK");
 if (rc < 0)
  return rc;

 if (tapeblock_major == 0)
  tapeblock_major = rc;
 return 0;
}
