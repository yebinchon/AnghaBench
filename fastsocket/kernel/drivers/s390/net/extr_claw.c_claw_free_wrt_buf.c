
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {scalar_t__ ml_priv; } ;
struct TYPE_6__ {int tx_packets; int tx_bytes; } ;
struct claw_privbk {scalar_t__ write_free_count; struct ccwbk* p_write_active_last; struct ccwbk* p_write_active_first; TYPE_3__ stats; struct ccwbk* p_write_free_chain; } ;
struct TYPE_5__ {scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ flag; } ;
struct ccwbk {TYPE_2__ write; struct ccwbk* next; TYPE_1__ header; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,scalar_t__) ;
 scalar_t__ CLAW_PENDING ;
 int TB_NOBUFFER ;
 int claw_clearbit_busy (int ,struct net_device*) ;
 int trace ;

__attribute__((used)) static void
claw_free_wrt_buf( struct net_device *dev )
{

 struct claw_privbk *privptr = (struct claw_privbk *)dev->ml_priv;
        struct ccwbk*p_first_ccw;
 struct ccwbk*p_last_ccw;
 struct ccwbk*p_this_ccw;
 struct ccwbk*p_next_ccw;

 CLAW_DBF_TEXT(4, trace, "freewrtb");

        p_first_ccw=((void*)0);
        p_last_ccw=((void*)0);
        p_this_ccw=privptr->p_write_active_first;
        while ( (p_this_ccw!=((void*)0)) && (p_this_ccw->header.flag!=CLAW_PENDING))
        {
                p_next_ccw = p_this_ccw->next;
                if (((p_next_ccw!=((void*)0)) &&
       (p_next_ccw->header.flag!=CLAW_PENDING)) ||
                    ((p_this_ccw == privptr->p_write_active_last) &&
                     (p_this_ccw->header.flag!=CLAW_PENDING))) {


                        privptr->p_write_active_first=p_this_ccw->next;
   p_this_ccw->header.flag=CLAW_PENDING;
                        p_this_ccw->next=privptr->p_write_free_chain;
   privptr->p_write_free_chain=p_this_ccw;
                        ++privptr->write_free_count;
   privptr->stats.tx_bytes+= p_this_ccw->write.count;
   p_this_ccw=privptr->p_write_active_first;
                        privptr->stats.tx_packets++;
                }
                else {
   break;
                }
        }
        if (privptr->write_free_count!=0) {
                claw_clearbit_busy(TB_NOBUFFER,dev);
        }

        if (privptr->p_write_active_first==((void*)0)) {
                privptr->p_write_active_last=((void*)0);
        }
 CLAW_DBF_TEXT_(4, trace, "FWC=%d", privptr->write_free_count);
        return;
}
