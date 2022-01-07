
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADB_CHAN ;
 int ADB_IOP ;
 int adb_iop_listen ;
 int iop_listen (int ,int ,int ,char*) ;
 int printk (char*) ;

int adb_iop_init(void)
{
 printk("adb: IOP ISM driver v0.4 for Unified ADB.\n");
 iop_listen(ADB_IOP, ADB_CHAN, adb_iop_listen, "ADB");
 return 0;
}
