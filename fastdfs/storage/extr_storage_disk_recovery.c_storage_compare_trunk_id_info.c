
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int path; } ;
typedef int FDFSTrunkPathInfo ;
typedef TYPE_1__ FDFSTrunkFileIdInfo ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int storage_compare_trunk_id_info(void *p1, void *p2)
{
 int result;
 result = memcmp(&(((FDFSTrunkFileIdInfo *)p1)->path), &(((FDFSTrunkFileIdInfo *)p2)->path), sizeof(FDFSTrunkPathInfo));


 if (result != 0)
 {
  return result;
 }

 return ((FDFSTrunkFileIdInfo *)p1)->id - ((FDFSTrunkFileIdInfo *)p2)->id;
}
