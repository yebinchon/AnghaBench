
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_ALLOC ;
 int OP_OFFLINE ;
 int OP_RUNNING_INTERRUPT ;
 int OP_RUNNING_POLL ;
 int OP_RUNNING_POLL_INTR ;

char *edac_op_state_to_string(int opstate)
{
 if (opstate == OP_RUNNING_POLL)
  return "POLLED";
 else if (opstate == OP_RUNNING_INTERRUPT)
  return "INTERRUPT";
 else if (opstate == OP_RUNNING_POLL_INTR)
  return "POLL-INTR";
 else if (opstate == OP_ALLOC)
  return "ALLOC";
 else if (opstate == OP_OFFLINE)
  return "OFFLINE";

 return "UNKNOWN";
}
