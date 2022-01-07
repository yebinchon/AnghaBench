
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_cm_compare_data {int data; int mask; } ;


 int IB_CM_COMPARE_SIZE ;
 int cm_mask_copy (int *,int *,int ) ;
 int memcmp (int *,int ,int) ;

__attribute__((used)) static int cm_compare_private_data(u8 *private_data,
       struct ib_cm_compare_data *dst_data)
{
 u8 src[IB_CM_COMPARE_SIZE];

 if (!dst_data)
  return 0;

 cm_mask_copy(src, private_data, dst_data->mask);
 return memcmp(src, dst_data->data, IB_CM_COMPARE_SIZE);
}
