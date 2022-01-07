
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t byte ;


 size_t MAX_MULTI_IE ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t) ;

__attribute__((used)) static byte AddInfo(byte **add_i,
                    byte **fty_i,
                    byte *esc_chi,
                    byte *facility)
{
  byte i;
  byte j;
  byte k;
  byte flen;
  byte len=0;



 if (esc_chi[0] && !(esc_chi[esc_chi[0]] & 0x7f))
  {
    add_i[0] = (byte *)"\x02\x02\x00";
  }

  else
  {
    add_i[0] = (byte *)"";
  }
  if(!fty_i[0][0])
  {
    add_i[3] = (byte *)"";
  }
  else
  {
    for(i=0,j=1;i<MAX_MULTI_IE && fty_i[i][0];i++)
    {
      dbug(1,dprintf("AddIFac[%d]",fty_i[i][0]));
      len += fty_i[i][0];
      len += 2;
      flen=fty_i[i][0];
      facility[j++]=0x1c;
      for(k=0;k<=flen;k++,j++)
      {
        facility[j]=fty_i[i][k];

      }
    }
    facility[0] = len;
    add_i[3] = facility;
  }

  len = add_i[0][0]+add_i[1][0]+add_i[2][0]+add_i[3][0];
  len += 4;
  return(len);
}
