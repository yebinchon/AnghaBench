
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** SGDescriptor_struct ;


 int kfree (int ******) ;

__attribute__((used)) static void cciss_free_sg_chain_blocks(SGDescriptor_struct **cmd_sg_list,
 int nr_cmds)
{
 int i;

 if (!cmd_sg_list)
  return;
 for (i = 0; i < nr_cmds; i++) {
  kfree(cmd_sg_list[i]);
  cmd_sg_list[i] = ((void*)0);
 }
 kfree(cmd_sg_list);
}
