
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int dummy; } ;
struct chbk {int flag_a; scalar_t__ ndev; } ;


 int CLAW_BH_ACTIVE ;
 int CLAW_DBF_TEXT (int,int ,char*) ;
 int clear_bit (int ,void*) ;
 int trace ;
 int unpack_read (struct net_device*) ;

__attribute__((used)) static void
claw_irq_tasklet ( unsigned long data )
{
 struct chbk * p_ch;
        struct net_device *dev;
        struct claw_privbk * privptr;

 p_ch = (struct chbk *) data;
        dev = (struct net_device *)p_ch->ndev;
 CLAW_DBF_TEXT(4, trace, "IRQtask");
 privptr = (struct claw_privbk *)dev->ml_priv;
        unpack_read(dev);
        clear_bit(CLAW_BH_ACTIVE, (void *)&p_ch->flag_a);
 CLAW_DBF_TEXT(4, trace, "TskletXt");
        return;
}
