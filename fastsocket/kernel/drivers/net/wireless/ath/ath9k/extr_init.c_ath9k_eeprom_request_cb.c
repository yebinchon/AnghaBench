
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct ath9k_eeprom_ctx {int complete; TYPE_1__* ah; } ;
struct TYPE_2__ {struct firmware const* eeprom_blob; } ;


 int complete (int *) ;

__attribute__((used)) static void ath9k_eeprom_request_cb(const struct firmware *eeprom_blob,
        void *ctx)
{
 struct ath9k_eeprom_ctx *ec = ctx;

 if (eeprom_blob)
  ec->ah->eeprom_blob = eeprom_blob;

 complete(&ec->complete);
}
