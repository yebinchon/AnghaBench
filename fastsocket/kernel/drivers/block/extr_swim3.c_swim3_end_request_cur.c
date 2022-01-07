
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blk_rq_cur_bytes (int ) ;
 int fd_req ;
 int swim3_end_request (int,int ) ;

__attribute__((used)) static bool swim3_end_request_cur(int err)
{
 return swim3_end_request(err, blk_rq_cur_bytes(fd_req));
}
