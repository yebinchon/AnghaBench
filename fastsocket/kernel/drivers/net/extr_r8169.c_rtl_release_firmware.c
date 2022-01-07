
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* rtl_fw; } ;
struct TYPE_4__ {int fw; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 TYPE_1__* RTL_FIRMWARE_UNKNOWN ;
 int kfree (TYPE_1__*) ;
 int release_firmware (int ) ;

__attribute__((used)) static void rtl_release_firmware(struct rtl8169_private *tp)
{
 if (!IS_ERR_OR_NULL(tp->rtl_fw)) {
  release_firmware(tp->rtl_fw->fw);
  kfree(tp->rtl_fw);
 }
 tp->rtl_fw = RTL_FIRMWARE_UNKNOWN;
}
