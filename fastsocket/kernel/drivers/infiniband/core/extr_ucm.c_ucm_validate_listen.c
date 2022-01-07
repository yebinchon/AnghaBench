
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 int EINVAL ;
 int IB_CMA_SERVICE_ID ;
 int IB_CMA_SERVICE_ID_MASK ;
 int IB_SDP_SERVICE_ID ;
 int IB_SDP_SERVICE_ID_MASK ;

__attribute__((used)) static int ucm_validate_listen(__be64 service_id, __be64 service_mask)
{
 service_id &= service_mask;

 if (((service_id & IB_CMA_SERVICE_ID_MASK) == IB_CMA_SERVICE_ID) ||
     ((service_id & IB_SDP_SERVICE_ID_MASK) == IB_SDP_SERVICE_ID))
  return -EINVAL;

 return 0;
}
