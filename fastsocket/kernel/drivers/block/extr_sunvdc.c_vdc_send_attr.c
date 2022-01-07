
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {int dummy; } ;
struct TYPE_2__ {int sid; int stype_env; int stype; int type; } ;
struct vio_disk_attr_info {int max_xfer_size; int vdisk_block_size; int xfer_mode; TYPE_1__ tag; } ;
struct vdc_port {int vio; int max_xfer_size; int vdisk_block_size; } ;
typedef int pkt ;


 int HS ;
 int VIO_ATTR_INFO ;
 int VIO_DRING_MODE ;
 int VIO_SUBTYPE_INFO ;
 int VIO_TYPE_CTRL ;
 int memset (struct vio_disk_attr_info*,int ,int) ;
 struct vdc_port* to_vdc_port (struct vio_driver_state*) ;
 int vio_ldc_send (int *,struct vio_disk_attr_info*,int) ;
 int vio_send_sid (struct vio_driver_state*) ;
 int viodbg (int ,char*,int ,int ,int ) ;

__attribute__((used)) static int vdc_send_attr(struct vio_driver_state *vio)
{
 struct vdc_port *port = to_vdc_port(vio);
 struct vio_disk_attr_info pkt;

 memset(&pkt, 0, sizeof(pkt));

 pkt.tag.type = VIO_TYPE_CTRL;
 pkt.tag.stype = VIO_SUBTYPE_INFO;
 pkt.tag.stype_env = VIO_ATTR_INFO;
 pkt.tag.sid = vio_send_sid(vio);

 pkt.xfer_mode = VIO_DRING_MODE;
 pkt.vdisk_block_size = port->vdisk_block_size;
 pkt.max_xfer_size = port->max_xfer_size;

 viodbg(HS, "SEND ATTR xfer_mode[0x%x] blksz[%u] max_xfer[%llu]\n",
        pkt.xfer_mode, pkt.vdisk_block_size, pkt.max_xfer_size);

 return vio_ldc_send(&port->vio, &pkt, sizeof(pkt));
}
