
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modem_info ;


 int RESULT_NO_CARRIER ;
 int isdn_tty_modem_result (int ,int *) ;

__attribute__((used)) static void
isdn_tty_modem_do_ncarrier(unsigned long data)
{
 modem_info *info = (modem_info *) data;
 isdn_tty_modem_result(RESULT_NO_CARRIER, info);
}
