
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int count; TYPE_4__** blocks; } ;
struct TYPE_7__ {int id; int offset; int size; } ;
struct TYPE_6__ {int store_path_index; int sub_path_high; int sub_path_low; } ;
struct TYPE_9__ {TYPE_2__ file; TYPE_1__ path; } ;
struct TYPE_8__ {TYPE_5__ block_array; } ;
typedef int FILE ;
typedef TYPE_3__ FDFSTrunksById ;
typedef TYPE_4__ FDFSTrunkFullInfo ;
typedef TYPE_5__ FDFSBlockArray ;


 int fprintf (int *,char*,int,int,int,int,int,int) ;

__attribute__((used)) static int block_tree_print_walk_callback(void *data, void *args)
{
 FILE *fp;
 FDFSBlockArray *pArray;
 FDFSTrunkFullInfo **pp;
 FDFSTrunkFullInfo **ppEnd;

 fp = (FILE *)args;
 pArray = &(((FDFSTrunksById *)data)->block_array);
 ppEnd = pArray->blocks + pArray->count;
 for (pp=pArray->blocks; pp<ppEnd; pp++)
 {
  fprintf(fp, "%d %d %d %d %d %d\n", (*pp)->path.store_path_index, (*pp)->path.sub_path_high, (*pp)->path.sub_path_low, (*pp)->file.id, (*pp)->file.offset, (*pp)->file.size);



 }

 return 0;
}
