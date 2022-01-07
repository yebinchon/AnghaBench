
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_device {int end_port; int start_port; int ref; int * port; } ;
struct ib_device {int dummy; } ;


 struct ib_umad_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_umad_kill_port (int *) ;
 int ib_umad_release_dev ;
 int kref_put (int *,int ) ;
 int umad_client ;

__attribute__((used)) static void ib_umad_remove_one(struct ib_device *device)
{
 struct ib_umad_device *umad_dev = ib_get_client_data(device, &umad_client);
 int i;

 if (!umad_dev)
  return;

 for (i = 0; i <= umad_dev->end_port - umad_dev->start_port; ++i)
  ib_umad_kill_port(&umad_dev->port[i]);

 kref_put(&umad_dev->ref, ib_umad_release_dev);
}
