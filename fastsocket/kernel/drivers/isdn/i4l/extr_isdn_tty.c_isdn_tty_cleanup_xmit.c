
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtmf_queue; int xmit_queue; } ;
typedef TYPE_1__ modem_info ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static void
isdn_tty_cleanup_xmit(modem_info * info)
{
 skb_queue_purge(&info->xmit_queue);



}
