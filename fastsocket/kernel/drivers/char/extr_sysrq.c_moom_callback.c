
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int GFP_KERNEL ;
 int node_zonelist (int ,int ) ;
 int out_of_memory (int ,int ,int ,int *) ;

__attribute__((used)) static void moom_callback(struct work_struct *ignored)
{
 out_of_memory(node_zonelist(0, GFP_KERNEL), GFP_KERNEL, 0, ((void*)0));
}
