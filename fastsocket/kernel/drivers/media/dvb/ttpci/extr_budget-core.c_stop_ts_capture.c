
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct budget {int dev; } ;


 int MASK_10 ;
 int MASK_20 ;
 int MC1 ;
 int SAA7146_IER_DISABLE (int ,int ) ;
 int dprintk (int,char*,struct budget*) ;
 int saa7146_write (int ,int ,int ) ;

__attribute__((used)) static int stop_ts_capture(struct budget *budget)
{
 dprintk(2, "budget: %p\n", budget);

 saa7146_write(budget->dev, MC1, MASK_20);
 SAA7146_IER_DISABLE(budget->dev, MASK_10);
 return 0;
}
