
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENODATA ;
 int ENOSPC ;

__attribute__((used)) static inline int err_block_err(int ret)
{
 if (ret && ret != -ENOSPC && ret != -ENODATA && ret != -EAGAIN)
  return 1;

 return 0;
}
