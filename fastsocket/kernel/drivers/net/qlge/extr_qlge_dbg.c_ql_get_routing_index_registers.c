
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int RT_DATA ;
 int RT_IDX ;
 int RT_IDX_IDX_SHIFT ;
 int RT_IDX_MR ;
 int RT_IDX_RS ;
 int RT_IDX_TYPE_SHIFT ;
 int SEM_RT_IDX_MASK ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_get_routing_index_registers(struct ql_adapter *qdev, u32 *buf)
{
 int status;
 u32 type, index, index_max;
 u32 result_index;
 u32 result_data;
 u32 val;

 status = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 if (status)
  return status;

 for (type = 0; type < 4; type++) {
  if (type < 2)
   index_max = 8;
  else
   index_max = 16;
  for (index = 0; index < index_max; index++) {
   val = RT_IDX_RS
    | (type << RT_IDX_TYPE_SHIFT)
    | (index << RT_IDX_IDX_SHIFT);
   ql_write32(qdev, RT_IDX, val);
   result_index = 0;
   while ((result_index & RT_IDX_MR) == 0)
    result_index = ql_read32(qdev, RT_IDX);
   result_data = ql_read32(qdev, RT_DATA);
   *buf = type;
   buf++;
   *buf = index;
   buf++;
   *buf = result_index;
   buf++;
   *buf = result_data;
   buf++;
  }
 }
 ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
 return status;
}
