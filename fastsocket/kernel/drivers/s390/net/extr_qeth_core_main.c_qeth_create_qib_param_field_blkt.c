
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int time_total; unsigned int inter_packet; unsigned int inter_packet_jumbo; } ;
struct TYPE_4__ {TYPE_1__ blkt; } ;
struct qeth_card {TYPE_2__ info; } ;


 char* _ascebc ;

__attribute__((used)) static void qeth_create_qib_param_field_blkt(struct qeth_card *card,
  char *param_field)
{
 param_field[16] = _ascebc['B'];
 param_field[17] = _ascebc['L'];
 param_field[18] = _ascebc['K'];
 param_field[19] = _ascebc['T'];
 *((unsigned int *) (&param_field[20])) = card->info.blkt.time_total;
 *((unsigned int *) (&param_field[24])) = card->info.blkt.inter_packet;
 *((unsigned int *) (&param_field[28])) =
  card->info.blkt.inter_packet_jumbo;
}
