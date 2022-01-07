
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct TYPE_2__ {int pending; } ;
struct asd_sas_port {TYPE_1__ disc; } ;


 int DISCE_RESUME ;
 int clear_bit (int ,int *) ;
 int sas_resume_sata (struct asd_sas_port*) ;
 struct sas_discovery_event* to_sas_discovery_event (struct work_struct*) ;

__attribute__((used)) static void sas_resume_devices(struct work_struct *work)
{
 struct sas_discovery_event *ev = to_sas_discovery_event(work);
 struct asd_sas_port *port = ev->port;

 clear_bit(DISCE_RESUME, &port->disc.pending);

 sas_resume_sata(port);
}
