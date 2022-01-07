
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viosrp_crq {int valid; int format; } ;
struct vio_port {TYPE_1__* dma_dev; } ;
struct srp_target {int dummy; } ;
struct TYPE_2__ {int unit_address; } ;
 int dprintk (char*,int,int) ;
 int eprintk (char*,int) ;
 int h_send_crq (int ,int,int ) ;
 int process_iu (struct viosrp_crq*,struct srp_target*) ;
 struct vio_port* target_to_port (struct srp_target*) ;

__attribute__((used)) static void process_crq(struct viosrp_crq *crq, struct srp_target *target)
{
 struct vio_port *vport = target_to_port(target);
 dprintk("%x %x\n", crq->valid, crq->format);

 switch (crq->valid) {
 case 0xC0:

  switch (crq->format) {
  case 0x01:
   h_send_crq(vport->dma_dev->unit_address,
       0xC002000000000000, 0);
   break;
  case 0x02:
   break;
  default:
   eprintk("Unknown format %u\n", crq->format);
  }
  break;
 case 0xFF:

  break;
 case 0x80:

  switch (crq->format) {
  case 128:
  case 130:
   process_iu(crq, target);
   break;
  case 129:
  case 133:
  case 131:
  case 132:
   eprintk("Unsupported format %u\n", crq->format);
   break;
  default:
   eprintk("Unknown format %u\n", crq->format);
  }
  break;
 default:
  eprintk("unknown message type 0x%02x!?\n", crq->valid);
 }
}
