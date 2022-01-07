
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcbit_dev {int readptr; int sh_mem; } ;


 int BANK2 ;
 int BANKLEN ;
 int memcpy_fromio (int *,int,int) ;

__attribute__((used)) static __inline__ void memcpy_frompcbit(struct pcbit_dev * dev, u_char * data, int len)
{
  int diff;

  diff = len - (BANKLEN - (dev->readptr - (dev->sh_mem + BANK2) ) );
  if (diff > 0)
    {
      memcpy_fromio(data, dev->readptr, len - diff);
      memcpy_fromio(data + (len - diff), dev->sh_mem + BANK2 , diff);
      dev->readptr = dev->sh_mem + BANK2 + diff;
    }
  else
    {
      memcpy_fromio(data, dev->readptr, len);
      dev->readptr += len;
      if (diff == 0)
 dev->readptr = dev->sh_mem + BANK2;
    }
}
