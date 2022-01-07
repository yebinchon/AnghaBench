
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_PCR ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_enable(int flag)
{
 regw(flag, CCDC_PCR);
}
