
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_status {int istatus; } ;


 int CBS_ACTIVE ;
 int gru_check_status_proc (void*) ;

__attribute__((used)) static inline int gru_check_status(void *cb)
{
 struct gru_control_block_status *cbs = (void *)cb;
 int ret;

 ret = cbs->istatus;
 if (ret != CBS_ACTIVE)
  ret = gru_check_status_proc(cb);
 return ret;
}
