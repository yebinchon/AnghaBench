
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_info {struct Host* RIOHosts; } ;
struct Host {TYPE_1__* Mapping; } ;
struct TYPE_2__ {int* Name; } ;


 int memcpy (int*,char*,int) ;

int RIODefaultName(struct rio_info *p, struct Host *HostP, unsigned int UnitId)
{
 memcpy(HostP->Mapping[UnitId].Name, "UNKNOWN RTA X-XX", 17);
 HostP->Mapping[UnitId].Name[12]='1'+(HostP-p->RIOHosts);
 if ((UnitId+1) > 9) {
  HostP->Mapping[UnitId].Name[14]='0'+((UnitId+1)/10);
  HostP->Mapping[UnitId].Name[15]='0'+((UnitId+1)%10);
 }
 else {
  HostP->Mapping[UnitId].Name[14]='1'+UnitId;
  HostP->Mapping[UnitId].Name[15]=0;
 }
 return 0;
}
