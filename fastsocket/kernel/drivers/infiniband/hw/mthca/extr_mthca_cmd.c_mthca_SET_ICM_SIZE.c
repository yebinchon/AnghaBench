
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mthca_dev {int dummy; } ;


 int ALIGN (int,int) ;
 int CMD_SET_ICM_SIZE ;
 int CMD_TIME_CLASS_A ;
 int MTHCA_ICM_PAGE_SHIFT ;
 int MTHCA_ICM_PAGE_SIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int mthca_cmd_imm (struct mthca_dev*,int,int*,int ,int ,int ,int ) ;

int mthca_SET_ICM_SIZE(struct mthca_dev *dev, u64 icm_size, u64 *aux_pages)
{
 int ret = mthca_cmd_imm(dev, icm_size, aux_pages, 0,
   0, CMD_SET_ICM_SIZE, CMD_TIME_CLASS_A);

 if (ret)
  return ret;





 *aux_pages = ALIGN(*aux_pages, PAGE_SIZE / MTHCA_ICM_PAGE_SIZE) >>
  (PAGE_SHIFT - MTHCA_ICM_PAGE_SHIFT);

 return 0;
}
