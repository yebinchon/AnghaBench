
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int type; int (* write_isac ) (struct isac*,int ,unsigned int) ;} ;


 int DBG (int ,char*,unsigned int) ;
 int DBG_L1M ;
 int ISACSX_CIX0 ;
 int ISAC_CIX0 ;


 int stub1 (struct isac*,int ,unsigned int) ;
 int stub2 (struct isac*,int ,unsigned int) ;

__attribute__((used)) static void ph_command(struct isac *isac, unsigned int command)
{
 DBG(DBG_L1M, "ph_command %#x", command);
 switch (isac->type) {
 case 129:
  isac->write_isac(isac, ISAC_CIX0, (command << 2) | 3);
  break;
 case 128:
  isac->write_isac(isac, ISACSX_CIX0, (command << 4) | (7 << 1));
  break;
 }
}
