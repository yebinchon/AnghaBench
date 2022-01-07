
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vio_msg_tag {int stype_env; } ;
struct vio_driver_state {int hs_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* handshake_complete ) (struct vio_driver_state*) ;} ;





 int VIO_HS_COMPLETE ;


 int process_attr (struct vio_driver_state*,void*) ;
 int process_dreg (struct vio_driver_state*,void*) ;
 int process_dunreg (struct vio_driver_state*,void*) ;
 int process_rdx (struct vio_driver_state*,void*) ;
 int process_unknown (struct vio_driver_state*,void*) ;
 int process_ver (struct vio_driver_state*,void*) ;
 int stub1 (struct vio_driver_state*) ;

int vio_control_pkt_engine(struct vio_driver_state *vio, void *pkt)
{
 struct vio_msg_tag *tag = pkt;
 u8 prev_state = vio->hs_state;
 int err;

 switch (tag->stype_env) {
 case 128:
  err = process_ver(vio, pkt);
  break;

 case 132:
  err = process_attr(vio, pkt);
  break;

 case 131:
  err = process_dreg(vio, pkt);
  break;

 case 130:
  err = process_dunreg(vio, pkt);
  break;

 case 129:
  err = process_rdx(vio, pkt);
  break;

 default:
  err = process_unknown(vio, pkt);
  break;
 }
 if (!err &&
     vio->hs_state != prev_state &&
     (vio->hs_state & VIO_HS_COMPLETE))
  vio->ops->handshake_complete(vio);

 return err;
}
