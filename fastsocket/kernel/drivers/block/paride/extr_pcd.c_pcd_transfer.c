
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (int,scalar_t__,int) ;
 int pcd_buf ;
 int pcd_bufblk ;
 scalar_t__ pcd_buffer ;
 scalar_t__ pcd_count ;
 int pcd_sector ;

__attribute__((used)) static void pcd_transfer(void)
{

 while (pcd_count && (pcd_sector / 4 == pcd_bufblk)) {
  int o = (pcd_sector % 4) * 512;
  memcpy(pcd_buf, pcd_buffer + o, 512);
  pcd_count--;
  pcd_buf += 512;
  pcd_sector++;
 }
}
