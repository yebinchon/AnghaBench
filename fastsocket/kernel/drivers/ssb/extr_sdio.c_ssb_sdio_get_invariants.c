
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int a0; int a1; int a2; int a3; } ;
struct ssb_sprom {int boardflags_lo; int revision; int board_rev; int pa0b0; int pa0b1; int pa0b2; int itssi_a; int itssi_bg; int maxpwr_a; int maxpwr_bg; int country_code; int ant_available_a; int ant_available_bg; int gpio0; int gpio1; int gpio2; int gpio3; TYPE_2__ antenna_gain; int et1mac; int il0mac; scalar_t__ boardflags_hi; } ;
struct ssb_boardinfo {int vendor; } ;
struct ssb_init_invariants {struct ssb_boardinfo boardinfo; struct ssb_sprom sprom; } ;
struct ssb_bus {TYPE_1__* host_sdio; } ;
struct sdio_func_tuple {int code; int* data; int size; struct sdio_func_tuple* next; } ;
struct TYPE_3__ {struct sdio_func_tuple* tuples; } ;



 int ENODEV ;
 int ETH_ALEN ;
 int GOTO_ERROR_ON (int,char*) ;
 int dev_err (int ,char*,char const*) ;
 int memcpy (int ,void*,int ) ;
 int memset (struct ssb_sprom*,int,int) ;
 int ssb_sdio_dev (struct ssb_bus*) ;

int ssb_sdio_get_invariants(struct ssb_bus *bus,
       struct ssb_init_invariants *iv)
{
 struct ssb_sprom *sprom = &iv->sprom;
 struct ssb_boardinfo *bi = &iv->boardinfo;
 const char *error_description = "none";
 struct sdio_func_tuple *tuple;
 void *mac;

 memset(sprom, 0xFF, sizeof(*sprom));
 sprom->boardflags_lo = 0;
 sprom->boardflags_hi = 0;

 tuple = bus->host_sdio->tuples;
 while (tuple) {
  switch (tuple->code) {
  case 0x22:
   switch (tuple->data[0]) {
   case 138:
    GOTO_ERROR_ON((tuple->size != 7) &&
           (tuple->data[1] != 6),
           "mac tpl size");

    mac = tuple->data + 2;
    memcpy(sprom->il0mac, mac, ETH_ALEN);
    memcpy(sprom->et1mac, mac, ETH_ALEN);
    break;
   default:
    break;
   }
   break;
  case 0x80:
   switch (tuple->data[0]) {
   case 128:
    GOTO_ERROR_ON(tuple->size != 2,
           "sromrev tpl size");
    sprom->revision = tuple->data[1];
    break;
   case 132:
    GOTO_ERROR_ON((tuple->size != 5) &&
           (tuple->size != 7),
           "id tpl size");
    bi->vendor = tuple->data[1] |
          (tuple->data[2]<<8);
    break;
   case 134:
    GOTO_ERROR_ON(tuple->size != 2,
           "boardrev tpl size");
    sprom->board_rev = tuple->data[1];
    break;
   case 129:
    GOTO_ERROR_ON((tuple->size != 9) &&
           (tuple->size != 10),
           "pa tpl size");
    sprom->pa0b0 = tuple->data[1] |
      ((u16)tuple->data[2] << 8);
    sprom->pa0b1 = tuple->data[3] |
      ((u16)tuple->data[4] << 8);
    sprom->pa0b2 = tuple->data[5] |
      ((u16)tuple->data[6] << 8);
    sprom->itssi_a = tuple->data[7];
    sprom->itssi_bg = tuple->data[7];
    sprom->maxpwr_a = tuple->data[8];
    sprom->maxpwr_bg = tuple->data[8];
    break;
   case 130:

    break;
   case 133:
    GOTO_ERROR_ON(tuple->size != 2,
           "ccode tpl size");
    sprom->country_code = tuple->data[1];
    break;
   case 137:
    GOTO_ERROR_ON(tuple->size != 2,
           "ant tpl size");
    sprom->ant_available_a = tuple->data[1];
    sprom->ant_available_bg = tuple->data[1];
    break;
   case 136:
    GOTO_ERROR_ON(tuple->size != 2,
           "antg tpl size");
    sprom->antenna_gain.a0 = tuple->data[1];
    sprom->antenna_gain.a1 = tuple->data[1];
    sprom->antenna_gain.a2 = tuple->data[1];
    sprom->antenna_gain.a3 = tuple->data[1];
    break;
   case 135:
    GOTO_ERROR_ON((tuple->size != 3) &&
           (tuple->size != 5),
           "bfl tpl size");
    sprom->boardflags_lo = tuple->data[1] |
       ((u16)tuple->data[2] << 8);
    break;
   case 131:
    GOTO_ERROR_ON(tuple->size != 5,
           "leds tpl size");
    sprom->gpio0 = tuple->data[1];
    sprom->gpio1 = tuple->data[2];
    sprom->gpio2 = tuple->data[3];
    sprom->gpio3 = tuple->data[4];
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
  tuple = tuple->next;
 }

 return 0;
error:
 dev_err(ssb_sdio_dev(bus), "failed to fetch device invariants: %s\n",
  error_description);
 return -ENODEV;
}
