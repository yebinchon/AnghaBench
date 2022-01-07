
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;


 int MASK_28 ;
 int MASK_30 ;
 int MASK_31 ;

__attribute__((used)) static void calculate_hps_source_and_sync(struct saa7146_dev *dev, int source, int sync, u32* hps_ctrl)
{
 *hps_ctrl &= ~(MASK_30 | MASK_31 | MASK_28);
 *hps_ctrl |= (source << 30) | (sync << 28);
}
