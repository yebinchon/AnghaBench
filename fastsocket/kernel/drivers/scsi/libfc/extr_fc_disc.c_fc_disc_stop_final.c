
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* rport_flush_queue ) () ;} ;
struct fc_lport {TYPE_1__ tt; } ;


 int fc_disc_stop (struct fc_lport*) ;
 int stub1 () ;

__attribute__((used)) static void fc_disc_stop_final(struct fc_lport *lport)
{
 fc_disc_stop(lport);
 lport->tt.rport_flush_queue();
}
