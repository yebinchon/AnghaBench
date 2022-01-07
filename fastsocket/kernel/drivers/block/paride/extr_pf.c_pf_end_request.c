
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __blk_end_request_cur (int *,int) ;
 int * pf_req ;

__attribute__((used)) static void pf_end_request(int err)
{
 if (pf_req && !__blk_end_request_cur(pf_req, err))
  pf_req = ((void*)0);
}
