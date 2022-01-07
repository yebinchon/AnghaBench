
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int last_sense; int changed; int name; } ;


 int mdelay (int) ;
 int pcd_command (struct pcd_unit*,char*,int,char*) ;
 int pcd_completion (struct pcd_unit*,char*,char*) ;
 int printk (char*,int ,char*,char,char,char) ;

__attribute__((used)) static void pcd_req_sense(struct pcd_unit *cd, char *fun)
{
 char rs_cmd[12] = { 0x03, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0 };
 char buf[16];
 int r, c;

 r = pcd_command(cd, rs_cmd, 16, "Request sense");
 mdelay(1);
 if (!r)
  pcd_completion(cd, buf, "Request sense");

 cd->last_sense = -1;
 c = 2;
 if (!r) {
  if (fun)
   printk("%s: %s: Sense key: %x, ASC: %x, ASQ: %x\n",
          cd->name, fun, buf[2] & 0xf, buf[12], buf[13]);
  c = buf[2] & 0xf;
  cd->last_sense =
      c | ((buf[12] & 0xff) << 8) | ((buf[13] & 0xff) << 16);
 }
 if ((c == 2) || (c == 6))
  cd->changed = 1;
}
