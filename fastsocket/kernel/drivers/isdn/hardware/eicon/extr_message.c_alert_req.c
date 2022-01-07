
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ word ;
typedef int dword ;
typedef int byte ;
struct TYPE_5__ {scalar_t__ State; } ;
typedef TYPE_1__ PLCI ;
typedef int DIVA_CAPI_ADAPTER ;
typedef int APPL ;
typedef int API_PARSE ;


 int CALL_ALERT ;
 int CONFIRM ;
 scalar_t__ INC_CON_ALERT ;
 scalar_t__ INC_CON_PENDING ;
 scalar_t__ _ALERT_IGNORED ;
 int _ALERT_R ;
 scalar_t__ _WRONG_IDENTIFIER ;
 scalar_t__ _WRONG_STATE ;
 int add_ai (TYPE_1__*,int *) ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int sendf (int *,int,int ,scalar_t__,char*,scalar_t__) ;
 int sig_req (TYPE_1__*,int ,int ) ;

__attribute__((used)) static byte alert_req(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
        PLCI *plci, APPL *appl, API_PARSE *msg)
{
  word Info;
  byte ret;

  dbug(1,dprintf("alert_req"));

  Info = _WRONG_IDENTIFIER;
  ret = 0;
  if(plci) {
    Info = _ALERT_IGNORED;
    if(plci->State!=INC_CON_ALERT) {
      Info = _WRONG_STATE;
      if(plci->State==INC_CON_PENDING) {
        Info = 0;
        plci->State=INC_CON_ALERT;
        add_ai(plci, &msg[0]);
        sig_req(plci,CALL_ALERT,0);
        ret = 1;
      }
    }
  }
  sendf(appl,
        _ALERT_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return ret;
}
