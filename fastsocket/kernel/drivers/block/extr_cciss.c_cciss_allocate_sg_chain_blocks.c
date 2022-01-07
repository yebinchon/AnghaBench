
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pdev; } ;
typedef TYPE_2__ ctlr_info_t ;
struct TYPE_4__ {int dev; } ;
typedef int SGDescriptor_struct ;


 int GFP_KERNEL ;
 int cciss_free_sg_chain_blocks (int **,int) ;
 int dev_err (int *,char*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static SGDescriptor_struct **cciss_allocate_sg_chain_blocks(
 ctlr_info_t *h, int chainsize, int nr_cmds)
{
 int j;
 SGDescriptor_struct **cmd_sg_list;

 if (chainsize <= 0)
  return ((void*)0);

 cmd_sg_list = kmalloc(sizeof(*cmd_sg_list) * nr_cmds, GFP_KERNEL);
 if (!cmd_sg_list)
  return ((void*)0);


 for (j = 0; j < nr_cmds; j++) {

  cmd_sg_list[j] = kmalloc((chainsize *
   sizeof(*cmd_sg_list[j])), GFP_KERNEL);
  if (!cmd_sg_list[j]) {
   dev_err(&h->pdev->dev, "Cannot get memory "
    "for s/g chains.\n");
   goto clean;
  }
 }
 return cmd_sg_list;
clean:
 cciss_free_sg_chain_blocks(cmd_sg_list, nr_cmds);
 return ((void*)0);
}
