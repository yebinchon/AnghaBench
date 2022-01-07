
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_23__ {int length; int type; } ;
struct viosrp_capabilities {TYPE_9__ common; int buffer; } ;
struct TYPE_16__ {struct viosrp_capabilities capabilities; } ;
struct TYPE_17__ {TYPE_2__ mad; } ;
struct srp_event_struct {TYPE_3__ iu; } ;
struct TYPE_20__ {int length; void* server_support; int cap_type; } ;
struct TYPE_21__ {int type; TYPE_6__ common; } ;
struct TYPE_18__ {int length; void* server_support; int cap_type; } ;
struct TYPE_19__ {int ecl; TYPE_4__ common; } ;
struct TYPE_22__ {char* name; char* loc; TYPE_7__ reserve; TYPE_5__ migration; int flags; } ;
struct ibmvscsi_host_data {TYPE_10__* host; TYPE_11__* dev; TYPE_8__ caps; int caps_addr; scalar_t__ client_migrated; int pool; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct TYPE_14__ {TYPE_1__ archdata; } ;
struct TYPE_13__ {int host_lock; TYPE_11__ shost_gendev; } ;


 int BUG_ON (int) ;
 int CAP_LIST_SUPPORTED ;
 int CLIENT_MIGRATED ;
 int CLIENT_RESERVE_SCSI_2 ;
 int MIGRATION_CAPABILITIES ;
 int RESERVATION_CAPABILITIES ;
 void* SERVER_SUPPORTS_CAP ;
 int VIOSRP_CAPABILITIES_TYPE ;
 int VIOSRP_MAD_FORMAT ;
 int capabilities_rsp ;
 scalar_t__ client_reserve ;
 int dev_err (TYPE_11__*,char*) ;
 char const* dev_name (TYPE_11__*) ;
 struct srp_event_struct* get_event_struct (int *) ;
 scalar_t__ ibmvscsi_send_srp_event (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ;
 int info_timeout ;
 int init_event_struct (struct srp_event_struct*,int ,int ,int) ;
 int memset (struct viosrp_capabilities*,int ,int) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void send_mad_capabilities(struct ibmvscsi_host_data *hostdata)
{
 struct viosrp_capabilities *req;
 struct srp_event_struct *evt_struct;
 unsigned long flags;
 struct device_node *of_node = hostdata->dev->archdata.of_node;
 const char *location;

 evt_struct = get_event_struct(&hostdata->pool);
 BUG_ON(!evt_struct);

 init_event_struct(evt_struct, capabilities_rsp,
     VIOSRP_MAD_FORMAT, info_timeout);

 req = &evt_struct->iu.mad.capabilities;
 memset(req, 0, sizeof(*req));

 hostdata->caps.flags = CAP_LIST_SUPPORTED;
 if (hostdata->client_migrated)
  hostdata->caps.flags |= CLIENT_MIGRATED;

 strncpy(hostdata->caps.name, dev_name(&hostdata->host->shost_gendev),
  sizeof(hostdata->caps.name));
 hostdata->caps.name[sizeof(hostdata->caps.name) - 1] = '\0';

 location = of_get_property(of_node, "ibm,loc-code", ((void*)0));
 location = location ? location : dev_name(hostdata->dev);
 strncpy(hostdata->caps.loc, location, sizeof(hostdata->caps.loc));
 hostdata->caps.loc[sizeof(hostdata->caps.loc) - 1] = '\0';

 req->common.type = VIOSRP_CAPABILITIES_TYPE;
 req->buffer = hostdata->caps_addr;

 hostdata->caps.migration.common.cap_type = MIGRATION_CAPABILITIES;
 hostdata->caps.migration.common.length = sizeof(hostdata->caps.migration);
 hostdata->caps.migration.common.server_support = SERVER_SUPPORTS_CAP;
 hostdata->caps.migration.ecl = 1;

 if (client_reserve) {
  hostdata->caps.reserve.common.cap_type = RESERVATION_CAPABILITIES;
  hostdata->caps.reserve.common.length = sizeof(hostdata->caps.reserve);
  hostdata->caps.reserve.common.server_support = SERVER_SUPPORTS_CAP;
  hostdata->caps.reserve.type = CLIENT_RESERVE_SCSI_2;
  req->common.length = sizeof(hostdata->caps);
 } else
  req->common.length = sizeof(hostdata->caps) - sizeof(hostdata->caps.reserve);

 spin_lock_irqsave(hostdata->host->host_lock, flags);
 if (ibmvscsi_send_srp_event(evt_struct, hostdata, info_timeout * 2))
  dev_err(hostdata->dev, "couldn't send CAPABILITIES_REQ!\n");
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);
}
