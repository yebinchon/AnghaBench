
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTX ;
 char UTX_TXDATA ;
 int UTX_TX_AVAIL ;
 int local_irq_restore (int) ;
 int local_irq_save (int) ;
 int udelay (int) ;

__attribute__((used)) static int rs_put_char(char ch)
{
        int flags, loops = 0;

        local_irq_save(flags);

 while (!(UTX & UTX_TX_AVAIL) && (loops < 1000)) {
         loops++;
         udelay(5);
        }

 UTX_TXDATA = ch;
        udelay(5);
        local_irq_restore(flags);
        return 1;
}
