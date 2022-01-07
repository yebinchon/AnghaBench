
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned char HIBYTE (unsigned short) ;
 unsigned char LOBYTE (unsigned short) ;
 int SIFADR ;
 int SIFADX ;
 int SIFINC ;
 unsigned short SIFREADW (int ) ;
 int SIFWRITEW (unsigned short,int ) ;

__attribute__((used)) static void tms380tr_read_ram(struct net_device *dev, unsigned char *Data,
    unsigned short Address, int Length)
{
 int i;
 unsigned short old_sifadx, old_sifadr, InWord;


 old_sifadx = SIFREADW(SIFADX);
 old_sifadr = SIFREADW(SIFADR);


 SIFWRITEW(0x0001, SIFADX);

        SIFWRITEW(Address, SIFADR);


 i = 0;
 for(;;)
 {
  InWord = SIFREADW(SIFINC);

  *(Data + i) = HIBYTE(InWord);
  if(++i == Length)
   break;

  *(Data + i) = LOBYTE(InWord);
  if (++i == Length)
   break;
 }


 SIFWRITEW(old_sifadx, SIFADX);
 SIFWRITEW(old_sifadr, SIFADR);

 return;
}
