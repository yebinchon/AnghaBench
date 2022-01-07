
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int phy_id; scalar_t__ handle; scalar_t__ sas_address; } ;
struct mptsas_portinfo {int num_phys; int phy_id; struct mptsas_portinfo* phy_info; TYPE_8__ attached; TYPE_8__ identify; scalar_t__ handle; int port_id; int negotiated_link_rate; int list; } ;
struct TYPE_11__ {int hba_port_num_phy; int num_ports; int sas_index; TYPE_1__* sh; scalar_t__ hba_port_sas_addr; int sas_topology_mutex; int sas_topology; struct mptsas_portinfo* hba_port_info; } ;
struct TYPE_10__ {int shost_gendev; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MPI_SAS_DEVICE_PGAD_FORM_HANDLE ;
 int MPI_SAS_DEVICE_PGAD_FORM_SHIFT ;
 int MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER ;
 int MPI_SAS_PHY_PGAD_FORM_SHIFT ;
 int kfree (struct mptsas_portinfo*) ;
 struct mptsas_portinfo* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mptsas_probe_one_phy (int *,struct mptsas_portinfo*,int ,int) ;
 int mptsas_sas_device_pg0 (TYPE_2__*,TYPE_8__*,int,scalar_t__) ;
 int mptsas_sas_io_unit_pg0 (TYPE_2__*,struct mptsas_portinfo*) ;
 int mptsas_sas_io_unit_pg1 (TYPE_2__*) ;
 int mptsas_sas_phy_pg0 (TYPE_2__*,struct mptsas_portinfo*,int,int) ;
 int mptsas_setup_wide_ports (TYPE_2__*,struct mptsas_portinfo*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mptsas_probe_hba_phys(MPT_ADAPTER *ioc)
{
 struct mptsas_portinfo *port_info, *hba;
 int error = -ENOMEM, i;

 hba = kzalloc(sizeof(struct mptsas_portinfo), GFP_KERNEL);
 if (! hba)
  goto out;

 error = mptsas_sas_io_unit_pg0(ioc, hba);
 if (error)
  goto out_free_port_info;

 mptsas_sas_io_unit_pg1(ioc);
 mutex_lock(&ioc->sas_topology_mutex);
 port_info = ioc->hba_port_info;
 if (!port_info) {
  ioc->hba_port_info = port_info = hba;
  ioc->hba_port_num_phy = port_info->num_phys;
  list_add_tail(&port_info->list, &ioc->sas_topology);
 } else {
  for (i = 0; i < hba->num_phys; i++) {
   port_info->phy_info[i].negotiated_link_rate =
    hba->phy_info[i].negotiated_link_rate;
   port_info->phy_info[i].handle =
    hba->phy_info[i].handle;
   port_info->phy_info[i].port_id =
    hba->phy_info[i].port_id;
  }
  kfree(hba->phy_info);
  kfree(hba);
  hba = ((void*)0);
 }
 mutex_unlock(&ioc->sas_topology_mutex);



 for (i = 0; i < port_info->num_phys; i++) {
  mptsas_sas_phy_pg0(ioc, &port_info->phy_info[i],
   (MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER <<
    MPI_SAS_PHY_PGAD_FORM_SHIFT), i);
  port_info->phy_info[i].identify.handle =
      port_info->phy_info[i].handle;
  mptsas_sas_device_pg0(ioc, &port_info->phy_info[i].identify,
   (MPI_SAS_DEVICE_PGAD_FORM_HANDLE <<
    MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
    port_info->phy_info[i].identify.handle);
  if (!ioc->hba_port_sas_addr)
   ioc->hba_port_sas_addr =
       port_info->phy_info[i].identify.sas_address;
  port_info->phy_info[i].identify.phy_id =
      port_info->phy_info[i].phy_id = i;
  if (port_info->phy_info[i].attached.handle)
   mptsas_sas_device_pg0(ioc,
    &port_info->phy_info[i].attached,
    (MPI_SAS_DEVICE_PGAD_FORM_HANDLE <<
     MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
    port_info->phy_info[i].attached.handle);
 }

 mptsas_setup_wide_ports(ioc, port_info);

 for (i = 0; i < port_info->num_phys; i++, ioc->sas_index++)
  mptsas_probe_one_phy(&ioc->sh->shost_gendev,
      &port_info->phy_info[i], ioc->sas_index, 1);

 return 0;

 out_free_port_info:
 kfree(hba);
 out:
 return error;
}
