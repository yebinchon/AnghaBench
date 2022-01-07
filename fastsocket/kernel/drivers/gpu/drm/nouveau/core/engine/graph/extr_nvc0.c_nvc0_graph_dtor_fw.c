
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_fuc {int * data; } ;


 int kfree (int *) ;

__attribute__((used)) static void
nvc0_graph_dtor_fw(struct nvc0_graph_fuc *fuc)
{
 kfree(fuc->data);
 fuc->data = ((void*)0);
}
