
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __blk_end_request (int *,int,unsigned int) ;
 int * fd_req ;

__attribute__((used)) static bool swim3_end_request(int err, unsigned int nr_bytes)
{
 if (__blk_end_request(fd_req, err, nr_bytes))
  return 1;

 fd_req = ((void*)0);
 return 0;
}
