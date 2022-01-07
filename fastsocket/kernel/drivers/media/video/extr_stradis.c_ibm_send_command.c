
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int dummy; } ;


 int IBM_MP2_CMD_DATA ;
 int IBM_MP2_CMD_STAT ;
 int IBM_MP2_COMMAND ;
 int debNormal ;
 int debiread (struct saa7146*,int ,int ,int) ;
 int debiwrite (struct saa7146*,int ,int ,int,int) ;
 int schedule () ;

__attribute__((used)) static int ibm_send_command(struct saa7146 *saa,
       int command, int data, int chain)
{
 int i;

 if (chain)
  debiwrite(saa, debNormal, IBM_MP2_COMMAND, (command << 1)| 1,2);
 else
  debiwrite(saa, debNormal, IBM_MP2_COMMAND, command << 1, 2);
 debiwrite(saa, debNormal, IBM_MP2_CMD_DATA, data, 2);
 debiwrite(saa, debNormal, IBM_MP2_CMD_STAT, 1, 2);
 for (i = 0; i < 100 &&
      (debiread(saa, debNormal, IBM_MP2_CMD_STAT, 2) & 1); i++)
  schedule();
 if (i == 100)
  return -1;
 return 0;
}
