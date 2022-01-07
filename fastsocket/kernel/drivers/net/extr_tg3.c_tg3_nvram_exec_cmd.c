
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int EBUSY ;
 int NVRAM_CMD ;
 int NVRAM_CMD_DONE ;
 int NVRAM_CMD_TIMEOUT ;
 int tr32 (int ) ;
 int tw32 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_nvram_exec_cmd(struct tg3 *tp, u32 nvram_cmd)
{
 int i;

 tw32(NVRAM_CMD, nvram_cmd);
 for (i = 0; i < NVRAM_CMD_TIMEOUT; i++) {
  udelay(10);
  if (tr32(NVRAM_CMD) & NVRAM_CMD_DONE) {
   udelay(10);
   break;
  }
 }

 if (i == NVRAM_CMD_TIMEOUT)
  return -EBUSY;

 return 0;
}
