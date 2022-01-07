
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i801_priv {int dummy; } ;


 int I801_START ;
 int MAX_TIMEOUT ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_HOST_BUSY ;
 int SMBHSTSTS_INTR ;
 int i801_check_post (struct i801_priv*,int,int) ;
 int i801_check_pre (struct i801_priv*) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_transaction(struct i801_priv *priv, int xact)
{
 int status;
 int result;
 int timeout = 0;

 result = i801_check_pre(priv);
 if (result < 0)
  return result;



 outb_p(xact | I801_START, SMBHSTCNT(priv));


 do {
  msleep(1);
  status = inb_p(SMBHSTSTS(priv));
 } while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_TIMEOUT));

 result = i801_check_post(priv, status, timeout > MAX_TIMEOUT);
 if (result < 0)
  return result;

 outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
 return 0;
}
