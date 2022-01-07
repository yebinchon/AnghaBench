
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_info {unsigned int* RIOBindTab; } ;
struct Host {unsigned int UniqueNum; } ;


 int MAX_RTA_BINDINGS ;

int RIOBootOk(struct rio_info *p, struct Host *HostP, unsigned long RtaUniq)
{
 int Entry;
 unsigned int HostUniq = HostP->UniqueNum;





 for (Entry = 0; (Entry < MAX_RTA_BINDINGS) && (p->RIOBindTab[Entry] != 0); Entry++) {
  if ((p->RIOBindTab[Entry] == HostUniq) || (p->RIOBindTab[Entry] == RtaUniq))
   return 0;
 }
 return 1;
}
