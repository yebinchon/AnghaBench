
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {scalar_t__ mac_enabled; scalar_t__ monitor; } ;


 int ZD1201_CMDCODE_DISABLE ;
 int ZD1201_RID_PROMISCUOUSMODE ;
 int zd1201_docmd (struct zd1201*,int ,int ,int ,int ) ;
 int zd1201_setconfig16 (struct zd1201*,int ,int ) ;

__attribute__((used)) static int zd1201_disable(struct zd1201 *zd)
{
 int err;

 if (!zd->mac_enabled)
  return 0;
 if (zd->monitor) {
  err = zd1201_setconfig16(zd, ZD1201_RID_PROMISCUOUSMODE, 0);
  if (err)
   return err;
 }

 err = zd1201_docmd(zd, ZD1201_CMDCODE_DISABLE, 0, 0, 0);
 if (!err)
  zd->mac_enabled = 0;
 return err;
}
