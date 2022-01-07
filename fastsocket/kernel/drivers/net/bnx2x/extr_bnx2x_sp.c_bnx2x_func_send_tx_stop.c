
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_state_params {int dummy; } ;
struct bnx2x {int dummy; } ;


 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_STOP_TRAFFIC ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline int bnx2x_func_send_tx_stop(struct bnx2x *bp,
           struct bnx2x_func_state_params *params)
{
 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_STOP_TRAFFIC, 0, 0, 0,
        NONE_CONNECTION_TYPE);
}
