
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nasid_t ;
typedef int cnodeid_t ;
struct TYPE_2__ {int h_bigwin_used; } ;


 int COMPACT_TO_NASID_NODEID (int ) ;
 unsigned int HUB_NUM_BIG_WINDOW ;
 int IIO_ITTE_DISABLE (int ,unsigned int) ;
 int bitmap_zero (int ,unsigned int) ;
 TYPE_1__* hub_data (int ) ;
 int hub_set_piomode (int ) ;

void hub_pio_init(cnodeid_t cnode)
{
 nasid_t nasid = COMPACT_TO_NASID_NODEID(cnode);
 unsigned i;


 bitmap_zero(hub_data(cnode)->h_bigwin_used, HUB_NUM_BIG_WINDOW);
 for (i = 0; i < HUB_NUM_BIG_WINDOW; i++)
  IIO_ITTE_DISABLE(nasid, i);

 hub_set_piomode(nasid);
}
