
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_CM_REQ_RECEIVED ;
 int IB_CM_SIDR_REQ_RECEIVED ;

__attribute__((used)) static inline int ib_ucm_new_cm_id(int event)
{
 return event == IB_CM_REQ_RECEIVED || event == IB_CM_SIDR_REQ_RECEIVED;
}
