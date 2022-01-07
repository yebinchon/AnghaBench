
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_aib {int dummy; } ;
struct clock_sync_data {int etr_port; int cpus; struct etr_aib* etr_aib; } ;
typedef int etr_sync ;


 int EAGAIN ;
 int atomic_set (int *,scalar_t__) ;
 int cpu_online_map ;
 int etr_aib_follows (struct etr_aib*,struct etr_aib*,int) ;
 struct etr_aib etr_port0 ;
 struct etr_aib etr_port1 ;
 int etr_sync_clock ;
 int get_online_cpus () ;
 int memcpy (struct etr_aib*,struct etr_aib*,int) ;
 int memset (struct clock_sync_data*,int ,int) ;
 scalar_t__ num_online_cpus () ;
 int put_online_cpus () ;
 int stop_machine (int ,struct clock_sync_data*,int *) ;

__attribute__((used)) static int etr_sync_clock_stop(struct etr_aib *aib, int port)
{
 struct clock_sync_data etr_sync;
 struct etr_aib *sync_port;
 int follows;
 int rc;


 sync_port = (port == 0) ? &etr_port0 : &etr_port1;
 follows = etr_aib_follows(sync_port, aib, port);
 memcpy(sync_port, aib, sizeof(*aib));
 if (!follows)
  return -EAGAIN;
 memset(&etr_sync, 0, sizeof(etr_sync));
 etr_sync.etr_aib = aib;
 etr_sync.etr_port = port;
 get_online_cpus();
 atomic_set(&etr_sync.cpus, num_online_cpus() - 1);
 rc = stop_machine(etr_sync_clock, &etr_sync, &cpu_online_map);
 put_online_cpus();
 return rc;
}
