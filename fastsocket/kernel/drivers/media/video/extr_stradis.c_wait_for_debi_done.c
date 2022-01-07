
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int dummy; } ;


 int SAA7146_MC2 ;
 int SAA7146_MC2_UPLD_DEBI ;
 int SAA7146_PSR ;
 int SAA7146_PSR_DEBI_S ;
 int debiwait_maxwait ;
 int printk (char*,int) ;
 int saaread (int ) ;

__attribute__((used)) static int wait_for_debi_done(struct saa7146 *saa)
{
 int i;


 for (i = 0; i < 100000 &&
      !(saaread(SAA7146_MC2) & SAA7146_MC2_UPLD_DEBI); i++)
  saaread(SAA7146_MC2);

 for (i = 0; i < 500000 &&
      (saaread(SAA7146_PSR) & SAA7146_PSR_DEBI_S); i++)
  saaread(SAA7146_MC2);

 if (i > debiwait_maxwait)
  printk("wait-for-debi-done maxwait: %d\n",
   debiwait_maxwait = i);

 if (i == 500000)
  return -1;

 return 0;
}
