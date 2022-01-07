
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THINKPAD_BD_DATA ;


 int PRINTK_2 (int ,char*,int *) ;
 int TRACE_TP3780I ;

int tp3780I_Cleanup(THINKPAD_BD_DATA * pBDData)
{
 int retval = 0;

 PRINTK_2(TRACE_TP3780I,
  "tp3780i::tp3780I_Cleanup entry and exit pBDData %p\n", pBDData);

 return retval;
}
