
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CBS_IDLE ;
 int GRU_NUM_KERNEL_DSR_BYTES ;
 int IMA ;
 int MQE_BUG_NO_RESOURCES ;
 int STAT (int ) ;
 int gru_free_cpu_resources (void*,void*) ;
 scalar_t__ gru_get_cpu_resources (int ,void**,void**) ;
 int gru_get_tri (void*) ;
 int gru_vload_phys (void*,unsigned long,int ,int,int ) ;
 int gru_wait (void*) ;
 int read_gpa ;

int gru_read_gpa(unsigned long *value, unsigned long gpa)
{
 void *cb;
 void *dsr;
 int ret, iaa;

 STAT(read_gpa);
 if (gru_get_cpu_resources(GRU_NUM_KERNEL_DSR_BYTES, &cb, &dsr))
  return MQE_BUG_NO_RESOURCES;
 iaa = gpa >> 62;
 gru_vload_phys(cb, gpa, gru_get_tri(dsr), iaa, IMA);
 ret = gru_wait(cb);
 if (ret == CBS_IDLE)
  *value = *(unsigned long *)dsr;
 gru_free_cpu_resources(cb, dsr);
 return ret;
}
