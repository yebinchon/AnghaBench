
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcbit_dev {int writeptr; int sh_mem; } ;


 int BANKLEN ;
 int memcpy_toio (int,int *,int) ;

__attribute__((used)) static __inline__ void memcpy_topcbit(struct pcbit_dev * dev, u_char * data,
          int len)
{
  int diff;

  diff = len - (BANKLEN - (dev->writeptr - dev->sh_mem) );

  if (diff > 0)
    {
      memcpy_toio(dev->writeptr, data, len - diff);
      memcpy_toio(dev->sh_mem, data + (len - diff), diff);
      dev->writeptr = dev->sh_mem + diff;
    }
  else
    {
      memcpy_toio(dev->writeptr, data, len);

      dev->writeptr += len;
      if (diff == 0)
 dev->writeptr = dev->sh_mem;
    }
}
