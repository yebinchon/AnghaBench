
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union hv_connection_id {TYPE_1__ u; scalar_t__ asu32; } ;


 int HV_STATUS_INSUFFICIENT_BUFFERS ;
 int VMBUS_MESSAGE_CONNECTION_ID ;
 int hv_post_message (union hv_connection_id,int,void*,size_t) ;
 int msleep (int) ;

int vmbus_post_msg(void *buffer, size_t buflen)
{
 union hv_connection_id conn_id;
 int ret = 0;
 int retries = 0;

 conn_id.asu32 = 0;
 conn_id.u.id = VMBUS_MESSAGE_CONNECTION_ID;






 while (retries < 3) {
  ret = hv_post_message(conn_id, 1, buffer, buflen);
  if (ret != HV_STATUS_INSUFFICIENT_BUFFERS)
   return ret;
  retries++;
  msleep(100);
 }
 return ret;
}
