
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int offset; } ;
struct TYPE_6__ {TYPE_1__ file; int path; } ;
struct TYPE_5__ {TYPE_3__ trunk; } ;
typedef int FDFSTrunkPathInfo ;
typedef TYPE_2__ FDFSTrunkNode ;
typedef TYPE_3__ FDFSTrunkFullInfo ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int storage_trunk_node_compare_offset(void *p1, void *p2)
{
 FDFSTrunkFullInfo *pTrunkInfo1;
 FDFSTrunkFullInfo *pTrunkInfo2;
 int result;

 pTrunkInfo1 = &(((FDFSTrunkNode *)p1)->trunk);
 pTrunkInfo2 = &(((FDFSTrunkNode *)p2)->trunk);

 result = memcmp(&(pTrunkInfo1->path), &(pTrunkInfo2->path), sizeof(FDFSTrunkPathInfo));

 if (result != 0)
 {
  return result;
 }

 result = pTrunkInfo1->file.id - pTrunkInfo2->file.id;
 if (result != 0)
 {
  return result;
 }

 return pTrunkInfo1->file.offset - pTrunkInfo2->file.offset;
}
