
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; } ;


 int ARRAY_SIZE (char**) ;
 char** i2c_devs ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int ) ;
 int printk (char*,char*,int,char*) ;

__attribute__((used)) static void do_i2c_scan(char *name, struct i2c_client *c)
{
 unsigned char buf;
 int i,rc;

 for (i = 0; i < ARRAY_SIZE(i2c_devs); i++) {
  c->addr = i;
  rc = i2c_master_recv(c,&buf,0);
  if (rc < 0)
   continue;
  printk("%s: i2c scan: found device @ 0x%x  [%s]\n",
         name, i << 1, i2c_devs[i] ? i2c_devs[i] : "???");
 }
}
