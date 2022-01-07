
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;


 int TX_DISABLED ;
 int TX_DMA_ERROR ;
 int TX_ENCRYPT_FAIL ;
 int TX_KEY_NOT_FOUND ;
 int TX_RETRY_EXCEEDED ;
 int TX_TIMEOUT ;
 int TX_UNAVAILABLE_PRIORITY ;
 int memset (char*,int ,int) ;

__attribute__((used)) static const char *wl1251_tx_parse_status(u8 status)
{

 static char buf[9];
 int i = 0;

 memset(buf, 0, sizeof(buf));

 if (status & TX_DMA_ERROR)
  buf[i++] = 'm';
 if (status & TX_DISABLED)
  buf[i++] = 'd';
 if (status & TX_RETRY_EXCEEDED)
  buf[i++] = 'r';
 if (status & TX_TIMEOUT)
  buf[i++] = 't';
 if (status & TX_KEY_NOT_FOUND)
  buf[i++] = 'k';
 if (status & TX_ENCRYPT_FAIL)
  buf[i++] = 'e';
 if (status & TX_UNAVAILABLE_PRIORITY)
  buf[i++] = 'p';



 return buf;
}
