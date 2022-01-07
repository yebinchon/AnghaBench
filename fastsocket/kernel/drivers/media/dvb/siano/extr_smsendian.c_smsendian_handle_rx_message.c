
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SmsVersionRes_ST {int ChipModel; } ;
struct SmsMsgHdr_ST {int dummy; } ;
struct TYPE_2__ {int msgType; int msgLength; } ;
struct SmsMsgData_ST {int * msgData; TYPE_1__ xMsgHeader; } ;






 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

void smsendian_handle_rx_message(void *buffer)
{
}
