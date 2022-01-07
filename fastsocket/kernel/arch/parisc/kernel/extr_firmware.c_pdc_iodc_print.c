
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* layers; } ;
struct TYPE_5__ {TYPE_1__ dp; int spa; scalar_t__ hpa; int iodc_io; } ;
struct TYPE_6__ {TYPE_2__ mem_cons; } ;


 int ENTRY_IO_COUT ;
 TYPE_3__* PAGE0 ;
 int __pa (char*) ;
 char* iodc_dbuf ;
 char* iodc_retbuf ;
 int pdc_lock ;
 int real32_call (int ,unsigned long,int ,int ,int ,int ,int ,int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_iodc_print(const unsigned char *str, unsigned count)
{
 static int posx;
 unsigned int i;
 unsigned long flags;

 for (i = 0; i < count && i < 79;) {
  switch(str[i]) {
  case '\n':
   iodc_dbuf[i+0] = '\r';
   iodc_dbuf[i+1] = '\n';
   i += 2;
   posx = 0;
   goto print;
  case '\t':
   while (posx & 7) {
    iodc_dbuf[i] = ' ';
    i++, posx++;
   }
   break;
  case '\b':
   posx -= 2;
  default:
   iodc_dbuf[i] = str[i];
   i++, posx++;
   break;
  }
 }





 if (i == 79 && iodc_dbuf[i-1] != '\n') {
  iodc_dbuf[i+0] = '\r';
  iodc_dbuf[i+1] = '\n';
 }

print:
        spin_lock_irqsave(&pdc_lock, flags);
        real32_call(PAGE0->mem_cons.iodc_io,
                    (unsigned long)PAGE0->mem_cons.hpa, ENTRY_IO_COUT,
                    PAGE0->mem_cons.spa, __pa(PAGE0->mem_cons.dp.layers),
                    __pa(iodc_retbuf), 0, __pa(iodc_dbuf), i, 0);
        spin_unlock_irqrestore(&pdc_lock, flags);

 return i;
}
