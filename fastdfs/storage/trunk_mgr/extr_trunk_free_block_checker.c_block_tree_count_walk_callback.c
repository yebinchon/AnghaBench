
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ block_array; } ;
typedef TYPE_2__ FDFSTrunksById ;



__attribute__((used)) static int block_tree_count_walk_callback(void *data, void *args)
{
 int *pcount;
 pcount = (int *)args;

 *pcount += ((FDFSTrunksById *)data)->block_array.count;
 return 0;
}
