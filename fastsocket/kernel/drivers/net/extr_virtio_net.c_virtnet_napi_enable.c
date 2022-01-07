
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int napi; int rvq; } ;


 int __napi_schedule (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int napi_enable (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int virtqueue_disable_cb (int ) ;

__attribute__((used)) static void virtnet_napi_enable(struct virtnet_info *vi)
{
 napi_enable(&vi->napi);





 if (napi_schedule_prep(&vi->napi)) {
  virtqueue_disable_cb(vi->rvq);
  local_bh_disable();
  __napi_schedule(&vi->napi);
  local_bh_enable();
 }
}
