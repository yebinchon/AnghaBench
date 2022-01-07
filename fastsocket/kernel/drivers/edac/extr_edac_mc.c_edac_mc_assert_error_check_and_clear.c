
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDAC_OPSTATE_POLL ;
 int edac_err_assert ;
 scalar_t__ edac_op_state ;

__attribute__((used)) static int edac_mc_assert_error_check_and_clear(void)
{
 int old_state;

 if (edac_op_state == EDAC_OPSTATE_POLL)
  return 1;

 old_state = edac_err_assert;
 edac_err_assert = 0;

 return old_state;
}
