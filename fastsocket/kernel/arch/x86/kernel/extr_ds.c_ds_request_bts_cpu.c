
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bts_tracer {int dummy; } ;
typedef int bts_ovfl_callback_t ;


 struct bts_tracer* ds_request_bts (int *,int,void*,size_t,int ,size_t,unsigned int) ;

struct bts_tracer *ds_request_bts_cpu(int cpu, void *base, size_t size,
          bts_ovfl_callback_t ovfl,
          size_t th, unsigned int flags)
{
 return ds_request_bts(((void*)0), cpu, base, size, ovfl, th, flags);
}
