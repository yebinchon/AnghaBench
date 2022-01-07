
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ xmit_buf; scalar_t__ fax; } ;
typedef TYPE_2__ modem_info ;
struct TYPE_5__ {int * tty_modem; TYPE_2__* info; } ;
struct TYPE_7__ {TYPE_1__ mdm; } ;


 int ISDN_MAX_CHANNELS ;
 TYPE_4__* dev ;
 int isdn_tty_cleanup_xmit (TYPE_2__*) ;
 int kfree (scalar_t__) ;
 int put_tty_driver (int *) ;
 int tty_unregister_driver (int *) ;

void
isdn_tty_exit(void)
{
 modem_info *info;
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  info = &dev->mdm.info[i];
  isdn_tty_cleanup_xmit(info);



  kfree(info->xmit_buf - 4);
 }
 tty_unregister_driver(dev->mdm.tty_modem);
 put_tty_driver(dev->mdm.tty_modem);
 dev->mdm.tty_modem = ((void*)0);
}
