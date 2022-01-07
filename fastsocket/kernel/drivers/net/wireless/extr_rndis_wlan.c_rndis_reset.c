
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct rndis_wlan_private {int command_lock; scalar_t__ current_command_oid; scalar_t__ command_buffer; } ;
struct rndis_reset {int msg_len; int msg_type; } ;


 int CONTROL_BUFFER_SIZE ;
 int RNDIS_MSG_RESET ;
 int cpu_to_le32 (int) ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int memset (struct rndis_reset*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rndis_command (struct usbnet*,void*,int ) ;

__attribute__((used)) static int rndis_reset(struct usbnet *usbdev)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);
 struct rndis_reset *reset;
 int ret;

 mutex_lock(&priv->command_lock);

 reset = (void *)priv->command_buffer;
 memset(reset, 0, sizeof(*reset));
 reset->msg_type = RNDIS_MSG_RESET;
 reset->msg_len = cpu_to_le32(sizeof(*reset));
 priv->current_command_oid = 0;
 ret = rndis_command(usbdev, (void *)reset, CONTROL_BUFFER_SIZE);

 mutex_unlock(&priv->command_lock);

 if (ret < 0)
  return ret;
 return 0;
}
