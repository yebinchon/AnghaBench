
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trunk_file_id; } ;
typedef TYPE_1__ FDFSTrunksById ;
typedef int FDFSTrunkFileIdentifier ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int storage_trunk_node_compare_entry(void *p1, void *p2)
{
 return memcmp(&(((FDFSTrunksById *)p1)->trunk_file_id), &(((FDFSTrunksById *)p2)->trunk_file_id), sizeof(FDFSTrunkFileIdentifier));


}
