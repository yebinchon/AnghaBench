
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int board_id; } ;



int smscore_get_board_id(struct smscore_device_t *core)
{
 return core->board_id;
}
