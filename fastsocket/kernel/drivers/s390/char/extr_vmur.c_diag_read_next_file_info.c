
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_control_block {int dummy; } ;


 int ENODATA ;
 int diag14 (unsigned long,int,int) ;

__attribute__((used)) static int diag_read_next_file_info(struct file_control_block *buf, int spid)
{
 int cc;

 cc = diag14((unsigned long) buf, spid, 0xfff);
 switch (cc) {
 case 0:
  return 0;
 default:
  return -ENODATA;
 }
}
