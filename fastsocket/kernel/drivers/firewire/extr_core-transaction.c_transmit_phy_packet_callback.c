
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_packet {int dummy; } ;
struct fw_card {int dummy; } ;


 int complete (int *) ;
 int phy_config_done ;

__attribute__((used)) static void transmit_phy_packet_callback(struct fw_packet *packet,
      struct fw_card *card, int status)
{
 complete(&phy_config_done);
}
