
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int last_sense; } ;


 int DBMSG (char*) ;
 int HZ ;
 int pcd_atapi (struct pcd_unit*,char*,int ,int *,int ) ;
 int pcd_sleep (int ) ;

__attribute__((used)) static int pcd_ready_wait(struct pcd_unit *cd, int tmo)
{
 char tr_cmd[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
 int k, p;

 k = 0;
 while (k < tmo) {
  cd->last_sense = 0;
  pcd_atapi(cd, tr_cmd, 0, ((void*)0), DBMSG("test unit ready"));
  p = cd->last_sense;
  if (!p)
   return 0;
  if (!(((p & 0xffff) == 0x0402) || ((p & 0xff) == 6)))
   return p;
  k++;
  pcd_sleep(HZ);
 }
 return 0x000020;
}
