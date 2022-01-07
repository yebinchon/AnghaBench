
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_packet {int ack_code; int* header; int tcode; int node_id; } ;
 int EACCES ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EREMOTEIO ;
 int HPSB_ERR (char*,int,int ,...) ;





 int TCODE_LOCK_REQUEST ;
 int TCODE_WRITEB ;
 int TCODE_WRITEQ ;

int hpsb_packet_success(struct hpsb_packet *packet)
{
 switch (packet->ack_code) {
 case 135:
  switch ((packet->header[1] >> 12) & 0xf) {
  case 131:
   return 0;
  case 130:
   return -EAGAIN;
  case 129:
   return -EREMOTEIO;
  case 128:
   return -EACCES;
  case 132:
   return -EINVAL;
  default:
   HPSB_ERR("received reserved rcode %d from node %d",
     (packet->header[1] >> 12) & 0xf,
     packet->node_id);
   return -EAGAIN;
  }

 case 139:
 case 141:
 case 140:
  return -EBUSY;

 case 133:
  return -EACCES;

 case 138:
  if (packet->tcode == TCODE_WRITEQ
      || packet->tcode == TCODE_WRITEB) {
   return 0;
  } else {
   HPSB_ERR("impossible ack_complete from node %d "
     "(tcode %d)", packet->node_id, packet->tcode);
   return -EAGAIN;
  }

 case 136:
  if (packet->tcode == TCODE_WRITEB
      || packet->tcode == TCODE_LOCK_REQUEST) {
   return -EAGAIN;
  } else {
   HPSB_ERR("impossible ack_data_error from node %d "
     "(tcode %d)", packet->node_id, packet->tcode);
   return -EAGAIN;
  }

 case 142:
  return -EINVAL;

 case 134:
 case 137:
 case 145:
 case 144:
 case 146:
 case 143:

  return -EAGAIN;

 default:
  HPSB_ERR("got invalid ack %d from node %d (tcode %d)",
    packet->ack_code, packet->node_id, packet->tcode);
  return -EAGAIN;
 }
}
