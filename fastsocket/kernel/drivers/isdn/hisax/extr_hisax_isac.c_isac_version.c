
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int (* read_isac ) (struct isac*,int ) ;} ;


 int DBG (int,char*,int,int ) ;
 int * ISACVer ;
 int ISAC_RBCH ;
 int stub1 (struct isac*,int ) ;

__attribute__((used)) static void isac_version(struct isac *cs)
{
 int val;

 val = cs->read_isac(cs, ISAC_RBCH);
 DBG(1, "ISAC version (%x): %s", val, ISACVer[(val >> 5) & 3]);
}
