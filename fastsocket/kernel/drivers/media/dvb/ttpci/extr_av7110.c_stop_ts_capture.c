
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int feeding1; int dev; } ;


 int MASK_10 ;
 int MASK_20 ;
 int MC1 ;
 int SAA7146_IER_DISABLE (int ,int ) ;
 int SAA7146_ISR_CLEAR (int ,int ) ;
 int dprintk (int,char*,struct av7110*) ;
 int saa7146_write (int ,int ,int ) ;

__attribute__((used)) static int stop_ts_capture(struct av7110 *budget)
{
 dprintk(2, "budget: %p\n", budget);

 if (--budget->feeding1)
  return budget->feeding1;
 saa7146_write(budget->dev, MC1, MASK_20);
 SAA7146_IER_DISABLE(budget->dev, MASK_10);
 SAA7146_ISR_CLEAR(budget->dev, MASK_10);
 return 0;
}
