
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ unchar ;
typedef int ulong ;
struct gdth_cmndinfo {scalar_t__ wait_for_completion; } ;
struct TYPE_10__ {int smp_lock; TYPE_1__* cmd_tab; } ;
typedef TYPE_3__ gdth_ha_str ;
struct TYPE_11__ {TYPE_2__* device; } ;
struct TYPE_9__ {scalar_t__ channel; scalar_t__ id; } ;
struct TYPE_8__ {TYPE_4__* cmnd; } ;
typedef TYPE_4__ Scsi_Cmnd ;


 int GDTH_MAXCMDS ;
 int SPECIAL_SCP (TYPE_4__*) ;
 int barrier () ;
 struct gdth_cmndinfo* gdth_cmnd_priv (TYPE_4__*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void gdth_wait_completion(gdth_ha_str *ha, int busnum, int id)
{
    ulong flags;
    int i;
    Scsi_Cmnd *scp;
    struct gdth_cmndinfo *cmndinfo;
    unchar b, t;

    spin_lock_irqsave(&ha->smp_lock, flags);

    for (i = 0; i < GDTH_MAXCMDS; ++i) {
        scp = ha->cmd_tab[i].cmnd;
        cmndinfo = gdth_cmnd_priv(scp);

        b = scp->device->channel;
        t = scp->device->id;
        if (!SPECIAL_SCP(scp) && t == (unchar)id &&
            b == (unchar)busnum) {
            cmndinfo->wait_for_completion = 0;
            spin_unlock_irqrestore(&ha->smp_lock, flags);
            while (!cmndinfo->wait_for_completion)
                barrier();
            spin_lock_irqsave(&ha->smp_lock, flags);
        }
    }
    spin_unlock_irqrestore(&ha->smp_lock, flags);
}
