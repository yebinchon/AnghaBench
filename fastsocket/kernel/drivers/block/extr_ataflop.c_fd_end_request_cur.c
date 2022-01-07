
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __blk_end_request_cur (int *,int) ;
 int * fd_request ;

__attribute__((used)) static void fd_end_request_cur(int err)
{
 if (!__blk_end_request_cur(fd_request, err))
  fd_request = ((void*)0);
}
