
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int * tmp_rbuf; scalar_t__ max_frame_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (scalar_t__,int ) ;

__attribute__((used)) static int alloc_tmp_rbuf(struct slgt_info *info)
{
 info->tmp_rbuf = kmalloc(info->max_frame_size + 5, GFP_KERNEL);
 if (info->tmp_rbuf == ((void*)0))
  return -ENOMEM;
 return 0;
}
