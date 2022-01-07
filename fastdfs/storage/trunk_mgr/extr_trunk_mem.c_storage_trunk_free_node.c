
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pMblockNode; } ;
typedef TYPE_1__ FDFSTrunkNode ;


 int fast_mblock_free (int *,int ) ;
 int free_blocks_man ;

__attribute__((used)) static void storage_trunk_free_node(void *ptr)
{
 fast_mblock_free(&free_blocks_man, ((FDFSTrunkNode *)ptr)->pMblockNode);

}
