
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146 {int dmadebi; } ;


 int SAA7146_DEBI_AD ;
 int SAA7146_DEBI_COMMAND ;
 int SAA7146_DEBI_CONFIG ;
 int SAA7146_MC2 ;
 int SAA7146_MC2_UPLD_DEBI ;
 int saawrite (int,int ) ;
 int virt_to_bus (int ) ;
 scalar_t__ wait_for_debi_done (struct saa7146*) ;

__attribute__((used)) static int debiwrite(struct saa7146 *saa, u32 config, int addr,
 u32 val, int count)
{
 u32 cmd;
 if (count <= 0 || count > 32764)
  return -1;
 if (wait_for_debi_done(saa) < 0)
  return -1;
 saawrite(config, SAA7146_DEBI_CONFIG);
 if (count <= 4)
  saawrite(val, SAA7146_DEBI_AD);
 else
  saawrite(virt_to_bus(saa->dmadebi), SAA7146_DEBI_AD);
 saawrite((cmd = (count << 17) | (addr & 0xffff)), SAA7146_DEBI_COMMAND);
 saawrite((SAA7146_MC2_UPLD_DEBI << 16) | SAA7146_MC2_UPLD_DEBI,
   SAA7146_MC2);
 return 0;
}
