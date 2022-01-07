
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct em28xx {scalar_t__ hash; size_t model; scalar_t__ i2c_hash; int tuner_type; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {scalar_t__ hash; size_t model; int tuner; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int em28xx_bcount ;
 TYPE_3__* em28xx_boards ;
 int em28xx_do_i2c_scan (struct em28xx*) ;
 TYPE_1__* em28xx_eeprom_hash ;
 int em28xx_errdev (char*,...) ;
 TYPE_1__* em28xx_i2c_hash ;

__attribute__((used)) static int em28xx_hint_board(struct em28xx *dev)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(em28xx_eeprom_hash); i++) {
  if (dev->hash == em28xx_eeprom_hash[i].hash) {
   dev->model = em28xx_eeprom_hash[i].model;
   dev->tuner_type = em28xx_eeprom_hash[i].tuner;

   em28xx_errdev("Your board has no unique USB ID.\n");
   em28xx_errdev("A hint were successfully done, "
          "based on eeprom hash.\n");
   em28xx_errdev("This method is not 100%% failproof.\n");
   em28xx_errdev("If the board were missdetected, "
          "please email this log to:\n");
   em28xx_errdev("\tV4L Mailing List "
          " <linux-media@vger.kernel.org>\n");
   em28xx_errdev("Board detected as %s\n",
          em28xx_boards[dev->model].name);

   return 0;
  }
 }
 if (!dev->i2c_hash)
  em28xx_do_i2c_scan(dev);

 for (i = 0; i < ARRAY_SIZE(em28xx_i2c_hash); i++) {
  if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
   dev->model = em28xx_i2c_hash[i].model;
   dev->tuner_type = em28xx_i2c_hash[i].tuner;
   em28xx_errdev("Your board has no unique USB ID.\n");
   em28xx_errdev("A hint were successfully done, "
          "based on i2c devicelist hash.\n");
   em28xx_errdev("This method is not 100%% failproof.\n");
   em28xx_errdev("If the board were missdetected, "
          "please email this log to:\n");
   em28xx_errdev("\tV4L Mailing List "
          " <linux-media@vger.kernel.org>\n");
   em28xx_errdev("Board detected as %s\n",
          em28xx_boards[dev->model].name);

   return 0;
  }
 }

 em28xx_errdev("Your board has no unique USB ID and thus need a "
        "hint to be detected.\n");
 em28xx_errdev("You may try to use card=<n> insmod option to "
        "workaround that.\n");
 em28xx_errdev("Please send an email with this log to:\n");
 em28xx_errdev("\tV4L Mailing List <linux-media@vger.kernel.org>\n");
 em28xx_errdev("Board eeprom hash is 0x%08lx\n", dev->hash);
 em28xx_errdev("Board i2c devicelist hash is 0x%08lx\n", dev->i2c_hash);

 em28xx_errdev("Here is a list of valid choices for the card=<n>"
        " insmod option:\n");
 for (i = 0; i < em28xx_bcount; i++) {
  em28xx_errdev("    card=%d -> %s\n",
    i, em28xx_boards[i].name);
 }
 return -1;
}
