
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int errorCode; int vpStatus; int debugFlags; int cmdError; int fatalError; int streamState; int grabState; int systemState; } ;
struct cam_params {TYPE_1__ status; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void printstatus(struct cam_params *params)
{
 PDEBUG(D_PROBE, "status: %02x %02x %02x %02x %02x %02x %02x %02x",
        params->status.systemState, params->status.grabState,
        params->status.streamState, params->status.fatalError,
        params->status.cmdError, params->status.debugFlags,
        params->status.vpStatus, params->status.errorCode);
}
