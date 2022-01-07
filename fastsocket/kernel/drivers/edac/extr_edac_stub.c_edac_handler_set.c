
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDAC_OPSTATE_POLL ;
 int atomic_read (int *) ;
 int edac_handlers ;
 scalar_t__ edac_op_state ;

int edac_handler_set(void)
{
 if (edac_op_state == EDAC_OPSTATE_POLL)
  return 0;

 return atomic_read(&edac_handlers);
}
