
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_SYN_MODE ;
 int regr (int ) ;

__attribute__((used)) static int ccdc_getfid(void)
{
 return (regr(CCDC_SYN_MODE) >> 15) & 1;
}
