
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bc_state {TYPE_3__* cs; int channel; } ;
struct TYPE_6__ {int errcode; } ;
struct TYPE_9__ {TYPE_1__ parm; int arg; int command; int driver; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_7__ {int (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_2__ iif; int myid; } ;


 int DEBUG_CMD ;
 int ISDN_STAT_L1ERR ;
 int ISDN_STAT_L1ERR_RECV ;
 int gig_dbg (int ,char*) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static inline void gigaset_isdn_rcv_err(struct bc_state *bcs)
{
 isdn_ctrl response;


 gig_dbg(DEBUG_CMD, "sending L1ERR");
 response.driver = bcs->cs->myid;
 response.command = ISDN_STAT_L1ERR;
 response.arg = bcs->channel;
 response.parm.errcode = ISDN_STAT_L1ERR_RECV;
 bcs->cs->iif.statcallb(&response);
}
