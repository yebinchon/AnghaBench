
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_packet {int (* callback ) (struct fw_packet*,struct fw_card*,int ) ;} ;
struct fw_card {int dummy; } ;


 int ENODEV ;
 int stub1 (struct fw_packet*,struct fw_card*,int ) ;

__attribute__((used)) static void dummy_send_response(struct fw_card *card, struct fw_packet *packet)
{
 packet->callback(packet, card, -ENODEV);
}
