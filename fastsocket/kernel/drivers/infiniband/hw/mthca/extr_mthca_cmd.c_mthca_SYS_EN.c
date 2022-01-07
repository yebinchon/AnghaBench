
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mthca_dev {int dummy; } ;


 int CMD_SYS_EN ;
 int CMD_TIME_CLASS_D ;
 int ENOMEM ;
 int mthca_cmd_imm (struct mthca_dev*,int ,int*,int ,int ,int ,int ) ;
 int mthca_warn (struct mthca_dev*,char*,int,int,int,char*) ;

int mthca_SYS_EN(struct mthca_dev *dev)
{
 u64 out;
 int ret;

 ret = mthca_cmd_imm(dev, 0, &out, 0, 0, CMD_SYS_EN, CMD_TIME_CLASS_D);

 if (ret == -ENOMEM)
  mthca_warn(dev, "SYS_EN DDR error: syn=%x, sock=%d, "
      "sladdr=%d, SPD source=%s\n",
      (int) (out >> 6) & 0xf, (int) (out >> 4) & 3,
      (int) (out >> 1) & 7, (int) out & 1 ? "NVMEM" : "DIMM");

 return ret;
}
