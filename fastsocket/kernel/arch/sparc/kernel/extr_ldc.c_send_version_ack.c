
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_version {int minor; int major; } ;
struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int EBUSY ;
 int HS ;
 int LDC_ACK ;
 int LDC_VERS ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,struct ldc_version*,int,unsigned long*) ;
 int ldcdbg (int ,char*,int ,int ) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int send_version_ack(struct ldc_channel *lp,
       struct ldc_version *vp)
{
 struct ldc_packet *p;
 unsigned long new_tail;

 p = handshake_compose_ctrl(lp, LDC_ACK, LDC_VERS,
       vp, sizeof(*vp), &new_tail);
 if (p) {
  ldcdbg(HS, "SEND VER ACK maj[%u] min[%u]\n",
         vp->major, vp->minor);

  return send_tx_packet(lp, p, new_tail);
 }
 return -EBUSY;
}
