
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_info {TYPE_1__* RIOSavedTable; } ;
struct Map {scalar_t__ RtaUniqueNum; } ;
struct TYPE_2__ {scalar_t__ RtaUniqueNum; } ;


 int TOTAL_MAP_ENTRIES ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int RIORemoveFromSavedTable(struct rio_info *p, struct Map *pMap)
{
 int entry;






 for (entry = 0; entry < TOTAL_MAP_ENTRIES; entry++) {
  if (p->RIOSavedTable[entry].RtaUniqueNum == pMap->RtaUniqueNum) {
   memset(&p->RIOSavedTable[entry], 0, sizeof(struct Map));
  }
 }
 return 0;
}
