
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
typedef TYPE_1__ FDFSTrunkSlot ;



__attribute__((used)) static int storage_trunk_node_compare_size(void *p1, void *p2)
{
 return ((FDFSTrunkSlot *)p1)->size - ((FDFSTrunkSlot *)p2)->size;
}
