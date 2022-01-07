
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SmsMsgHdr_ST {int dummy; } ;
struct TYPE_2__ {int msgType; int msgLength; } ;
struct SmsMsgData_ST {void** msgData; TYPE_1__ xMsgHeader; } ;



 void* le32_to_cpu (void*) ;

void smsendian_handle_tx_message(void *buffer)
{
}
