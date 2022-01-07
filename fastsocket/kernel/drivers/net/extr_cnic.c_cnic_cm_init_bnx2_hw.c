
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_dev {int dummy; } ;


 int cnic_ctx_wr (struct cnic_dev*,int,int ,int ) ;
 int random32 () ;

__attribute__((used)) static int cnic_cm_init_bnx2_hw(struct cnic_dev *dev)
{
 u32 seed;

 seed = random32();
 cnic_ctx_wr(dev, 45, 0, seed);
 return 0;
}
