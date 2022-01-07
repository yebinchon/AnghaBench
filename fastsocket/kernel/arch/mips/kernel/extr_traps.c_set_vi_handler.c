
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vi_handler_t ;


 void* set_vi_srs_handler (int,int ,int ) ;

void *set_vi_handler(int n, vi_handler_t addr)
{
 return set_vi_srs_handler(n, addr, 0);
}
