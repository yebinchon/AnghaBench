
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_timer {scalar_t__ (* read ) (struct nouveau_timer*) ;} ;


 int NV_SUBDEV_CLASS ;
 struct nouveau_timer* nouveau_timer (void*) ;
 scalar_t__ nv_iclass (void*,int ) ;
 int nv_rd32 (void*,int) ;
 int nv_ro32 (void*,int) ;
 scalar_t__ stub1 (struct nouveau_timer*) ;
 scalar_t__ stub2 (struct nouveau_timer*) ;

bool
nouveau_timer_wait_eq(void *obj, u64 nsec, u32 addr, u32 mask, u32 data)
{
 struct nouveau_timer *ptimer = nouveau_timer(obj);
 u64 time0;

 time0 = ptimer->read(ptimer);
 do {
  if (nv_iclass(obj, NV_SUBDEV_CLASS)) {
   if ((nv_rd32(obj, addr) & mask) == data)
    return 1;
  } else {
   if ((nv_ro32(obj, addr) & mask) == data)
    return 1;
  }
 } while (ptimer->read(ptimer) - time0 < nsec);

 return 0;
}
