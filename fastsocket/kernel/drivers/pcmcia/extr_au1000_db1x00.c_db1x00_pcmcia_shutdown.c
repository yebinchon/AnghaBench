
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct au1000_pcmcia_socket {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcmcia; } ;


 int au_sync_delay (int) ;
 TYPE_1__* bcsr ;

__attribute__((used)) static void db1x00_pcmcia_shutdown(struct au1000_pcmcia_socket *skt)
{
 bcsr->pcmcia = 0;
 au_sync_delay(2);
}
