
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct budget {int dummy; } ;


 int DiseqcSendBit (struct budget*,int) ;
 int dprintk (int,char*,struct budget*) ;

__attribute__((used)) static void DiseqcSendByte (struct budget *budget, int data)
{
 int i, par=1, d;

 dprintk(2, "budget: %p\n", budget);

 for (i=7; i>=0; i--) {
  d = (data>>i)&1;
  par ^= d;
  DiseqcSendBit(budget, d);
 }

 DiseqcSendBit(budget, par);
}
