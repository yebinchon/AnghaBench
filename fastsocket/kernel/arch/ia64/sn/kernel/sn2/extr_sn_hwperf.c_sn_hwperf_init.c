
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ nasid_t ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ SN_HWPERF_GET_HEAPSIZE ;
 int SN_HWPERF_INSTALL_HEAP ;
 int SN_HWPERF_OBJECT_COUNT ;
 int SN_HWPERF_OP_OK ;
 scalar_t__ ia64_sn_get_console_nasid () ;
 int ia64_sn_hwperf_op (scalar_t__,int,int ,int,int,int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sn_hwperf_init_mutex ;
 scalar_t__ sn_hwperf_master_nasid ;
 int sn_hwperf_obj_cnt ;
 int * sn_hwperf_salheap ;
 int vfree (int *) ;
 int * vmalloc (int) ;

__attribute__((used)) static int sn_hwperf_init(void)
{
 u64 v;
 int salr;
 int e = 0;


 mutex_lock(&sn_hwperf_init_mutex);

 if (sn_hwperf_salheap) {
  mutex_unlock(&sn_hwperf_init_mutex);
  return e;
 }





 sn_hwperf_master_nasid = (nasid_t) ia64_sn_get_console_nasid();





 salr = ia64_sn_hwperf_op(sn_hwperf_master_nasid,
     (u64) SN_HWPERF_GET_HEAPSIZE, 0,
     (u64) sizeof(u64), (u64) &v, 0, 0, ((void*)0));
 if (salr != SN_HWPERF_OP_OK) {
  e = -EINVAL;
  goto out;
 }

 if ((sn_hwperf_salheap = vmalloc(v)) == ((void*)0)) {
  e = -ENOMEM;
  goto out;
 }
 salr = ia64_sn_hwperf_op(sn_hwperf_master_nasid,
     SN_HWPERF_INSTALL_HEAP, 0, v,
     (u64) sn_hwperf_salheap, 0, 0, ((void*)0));
 if (salr != SN_HWPERF_OP_OK) {
  e = -EINVAL;
  goto out;
 }

 salr = ia64_sn_hwperf_op(sn_hwperf_master_nasid,
     SN_HWPERF_OBJECT_COUNT, 0,
     sizeof(u64), (u64) &v, 0, 0, ((void*)0));
 if (salr != SN_HWPERF_OP_OK) {
  e = -EINVAL;
  goto out;
 }
 sn_hwperf_obj_cnt = (int)v;

out:
 if (e < 0 && sn_hwperf_salheap) {
  vfree(sn_hwperf_salheap);
  sn_hwperf_salheap = ((void*)0);
  sn_hwperf_obj_cnt = 0;
 }
 mutex_unlock(&sn_hwperf_init_mutex);
 return e;
}
