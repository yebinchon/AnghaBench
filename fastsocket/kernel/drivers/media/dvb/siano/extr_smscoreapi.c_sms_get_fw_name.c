
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smscore_device_t {int dummy; } ;
typedef enum sms_device_type_st { ____Placeholder_sms_device_type_st } sms_device_type_st ;
struct TYPE_2__ {char** fw; } ;


 TYPE_1__* sms_get_board (int ) ;
 char*** smscore_fw_lkup ;
 int smscore_get_board_id (struct smscore_device_t*) ;

__attribute__((used)) static inline char *sms_get_fw_name(struct smscore_device_t *coredev,
        int mode, enum sms_device_type_st type)
{
 char **fw = sms_get_board(smscore_get_board_id(coredev))->fw;
 return (fw && fw[mode]) ? fw[mode] : smscore_fw_lkup[mode][type];
}
