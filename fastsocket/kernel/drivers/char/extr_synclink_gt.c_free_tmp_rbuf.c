
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int * tmp_rbuf; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_tmp_rbuf(struct slgt_info *info)
{
 kfree(info->tmp_rbuf);
 info->tmp_rbuf = ((void*)0);
}
