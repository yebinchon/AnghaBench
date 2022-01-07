
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef void* u16 ;
struct vio_ver_info {int tag; int dev_class; void* minor; void* major; } ;
struct vio_driver_state {int dev_class; scalar_t__ _local_sid; } ;
typedef int pkt ;


 int HS ;
 int VIO_SUBTYPE_INFO ;
 int VIO_TYPE_CTRL ;
 int VIO_VER_INFO ;
 int init_tag (int *,int ,int ,int ) ;
 int memset (struct vio_ver_info*,int ,int) ;
 scalar_t__ sched_clock () ;
 int send_ctrl (struct vio_driver_state*,int *,int) ;
 int viodbg (int ,char*,void*,void*,int ) ;

__attribute__((used)) static int send_version(struct vio_driver_state *vio, u16 major, u16 minor)
{
 struct vio_ver_info pkt;

 vio->_local_sid = (u32) sched_clock();

 memset(&pkt, 0, sizeof(pkt));
 init_tag(&pkt.tag, VIO_TYPE_CTRL, VIO_SUBTYPE_INFO, VIO_VER_INFO);
 pkt.major = major;
 pkt.minor = minor;
 pkt.dev_class = vio->dev_class;

 viodbg(HS, "SEND VERSION INFO maj[%u] min[%u] devclass[%u]\n",
        major, minor, vio->dev_class);

 return send_ctrl(vio, &pkt.tag, sizeof(pkt));
}
