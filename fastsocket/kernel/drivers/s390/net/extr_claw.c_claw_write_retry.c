
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct chbk {scalar_t__ claw_state; struct net_device* ndev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 scalar_t__ CLAW_STOP ;
 int claw_strt_out_IO (struct net_device*) ;
 int trace ;

__attribute__((used)) static void
claw_write_retry ( struct chbk *p_ch )
{

        struct net_device *dev=p_ch->ndev;

 CLAW_DBF_TEXT(4, trace, "w_retry");
        if (p_ch->claw_state == CLAW_STOP) {
         return;
        }
 claw_strt_out_IO( dev );
 CLAW_DBF_TEXT(4, trace, "rtry_xit");
        return;
}
