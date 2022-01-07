
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASC_SG_LIST_PER_Q ;

__attribute__((used)) static int AscSgListToQueue(int sg_list)
{
 int n_sg_list_qs;

 n_sg_list_qs = ((sg_list - 1) / ASC_SG_LIST_PER_Q);
 if (((sg_list - 1) % ASC_SG_LIST_PER_Q) != 0)
  n_sg_list_qs++;
 return n_sg_list_qs + 1;
}
