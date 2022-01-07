
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lbs_private {int dummy; } ;
typedef int buf ;


 int LBS_DEB_CMD ;
 scalar_t__ MACREG_INT_CODE_MIC_ERR_UNICAST ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_send_iwevcustom_event (struct lbs_private*,char*) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void handle_mic_failureevent(struct lbs_private *priv, u32 event)
{
 char buf[50];

 lbs_deb_enter(LBS_DEB_CMD);
 memset(buf, 0, sizeof(buf));

 sprintf(buf, "%s", "MLME-MICHAELMICFAILURE.indication ");

 if (event == MACREG_INT_CODE_MIC_ERR_UNICAST) {
  strcat(buf, "unicast ");
 } else {
  strcat(buf, "multicast ");
 }

 lbs_send_iwevcustom_event(priv, buf);
 lbs_deb_leave(LBS_DEB_CMD);
}
