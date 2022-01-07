
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSTrunkNode ;


 int trunk_add_space_by_node (int *) ;

__attribute__((used)) static int storage_trunk_add_free_blocks_callback(void *data, void *args)
{







 return trunk_add_space_by_node((FDFSTrunkNode *)data);
}
