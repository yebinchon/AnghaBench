
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dummy; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int dev_alert (int ,char*,int,char const*) ;
 int dev_crit (int ,char*,int,char const*) ;
 int dev_dbg (int ,char*,int,char const*) ;
 int dev_emerg (int ,char*,int,char const*) ;
 int dev_err (int ,char*,int,char const*) ;
 int dev_info (int ,char*,int,char const*) ;
 int dev_notice (int ,char*,int,char const*) ;
 int dev_warn (int ,char*,int,char const*) ;

__attribute__((used)) static void hw_log_msg(struct rsxx_cardinfo *card, const char *str, int len)
{
 static char level;





 if ((len > 3) && (str[0] == '<') && (str[2] == '>')) {
  level = str[1];
  str += 3;
  len -= 3;
 }

 switch (level) {
 case '0':
  dev_emerg(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '1':
  dev_alert(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '2':
  dev_crit(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '3':
  dev_err(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '4':
  dev_warn(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '5':
  dev_notice(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '6':
  dev_info(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 case '7':
  dev_dbg(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 default:
  dev_info(CARD_TO_DEV(card), "HW: %.*s", len, str);
  break;
 }
}
