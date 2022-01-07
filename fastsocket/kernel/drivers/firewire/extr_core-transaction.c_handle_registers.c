
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_request {int dummy; } ;
struct fw_card {unsigned long long broadcast_channel; TYPE_1__* driver; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned long long (* get_bus_time ) (struct fw_card*) ;} ;


 int BROADCAST_CHANNEL_INITIAL ;
 int BROADCAST_CHANNEL_VALID ;
 int BUG () ;
 unsigned long long CSR_REGISTER_BASE ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int TCODE_IS_READ_REQUEST (int) ;
 int TCODE_READ_QUADLET_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (unsigned long long) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 unsigned long long stub1 (struct fw_card*) ;

__attribute__((used)) static void handle_registers(struct fw_card *card, struct fw_request *request,
  int tcode, int destination, int source, int generation,
  int speed, unsigned long long offset,
  void *payload, size_t length, void *callback_data)
{
 int reg = offset & ~CSR_REGISTER_BASE;
 unsigned long long bus_time;
 __be32 *data = payload;
 int rcode = RCODE_COMPLETE;

 switch (reg) {
 case 128:
 case 131:
  if (!TCODE_IS_READ_REQUEST(tcode) || length != 4) {
   rcode = RCODE_TYPE_ERROR;
   break;
  }

  bus_time = card->driver->get_bus_time(card);
  if (reg == 128)
   *data = cpu_to_be32(bus_time);
  else
   *data = cpu_to_be32(bus_time >> 25);
  break;

 case 134:
  if (tcode == TCODE_READ_QUADLET_REQUEST)
   *data = cpu_to_be32(card->broadcast_channel);
  else if (tcode == TCODE_WRITE_QUADLET_REQUEST)
   card->broadcast_channel =
       (be32_to_cpu(*data) & BROADCAST_CHANNEL_VALID) |
       BROADCAST_CHANNEL_INITIAL;
  else
   rcode = RCODE_TYPE_ERROR;
  break;

 case 132:
 case 135:
 case 130:
 case 129:







  BUG();
  break;

 case 133:


 default:
  rcode = RCODE_ADDRESS_ERROR;
  break;
 }

 fw_send_response(card, request, rcode);
}
