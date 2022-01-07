
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int iop_ism_present ;

int adb_iop_probe(void)
{
 if (!iop_ism_present) return -ENODEV;
 return 0;
}
