
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsb_iso {int dummy; } ;
struct firedtv {struct hpsb_iso* backend_data; int device; int isochannel; } ;
struct TYPE_2__ {int host; } ;


 int ENOMEM ;
 int FDTV_ISO_BUFFER_PACKETS ;
 int FDTV_ISO_BUFFER_SIZE ;
 int HPSB_ISO_DMA_DEFAULT ;
 int dev_err (int ,char*) ;
 struct hpsb_iso* hpsb_iso_recv_init (int ,int ,int ,int ,int ,int,int ) ;
 int hpsb_iso_recv_start (struct hpsb_iso*,int,int,int ) ;
 int hpsb_iso_shutdown (struct hpsb_iso*) ;
 TYPE_1__* node_of (struct firedtv*) ;
 int rawiso_activity_cb ;

__attribute__((used)) static int start_iso(struct firedtv *fdtv)
{
 struct hpsb_iso *iso_handle;
 int ret;

 iso_handle = hpsb_iso_recv_init(node_of(fdtv)->host,
    FDTV_ISO_BUFFER_SIZE, FDTV_ISO_BUFFER_PACKETS,
    fdtv->isochannel, HPSB_ISO_DMA_DEFAULT,
    -1,
    rawiso_activity_cb);
 if (iso_handle == ((void*)0)) {
  dev_err(fdtv->device, "cannot initialize iso receive\n");
  return -ENOMEM;
 }
 fdtv->backend_data = iso_handle;

 ret = hpsb_iso_recv_start(iso_handle, -1, -1, 0);
 if (ret != 0) {
  dev_err(fdtv->device, "cannot start iso receive\n");
  hpsb_iso_shutdown(iso_handle);
  fdtv->backend_data = ((void*)0);
 }
 return ret;
}
