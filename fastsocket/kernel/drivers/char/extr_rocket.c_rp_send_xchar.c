
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct r_port* driver_data; } ;
struct r_port {int channel; } ;
typedef int CHANNEL_t ;


 scalar_t__ rocket_paranoia_check (struct r_port*,char*) ;
 scalar_t__ sGetTxCnt (int *) ;
 int sGetTxRxDataIO (int *) ;
 int sWriteTxByte (int ,char) ;
 int sWriteTxPrioByte (int *,char) ;

__attribute__((used)) static void rp_send_xchar(struct tty_struct *tty, char ch)
{
 struct r_port *info = tty->driver_data;
 CHANNEL_t *cp;

 if (rocket_paranoia_check(info, "rp_send_xchar"))
  return;

 cp = &info->channel;
 if (sGetTxCnt(cp))
  sWriteTxPrioByte(cp, ch);
 else
  sWriteTxByte(sGetTxRxDataIO(cp), ch);
}
