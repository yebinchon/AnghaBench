
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char blksize; int max_dtr; } ;
struct mmc_card {TYPE_1__ cis; } ;


 int EINVAL ;
 int* speed_unit ;
 int* speed_val ;

__attribute__((used)) static int cistpl_funce_common(struct mmc_card *card,
          const unsigned char *buf, unsigned size)
{
 if (size < 0x04 || buf[0] != 0)
  return -EINVAL;


 card->cis.blksize = buf[1] | (buf[2] << 8);


 card->cis.max_dtr = speed_val[(buf[3] >> 3) & 15] *
       speed_unit[buf[3] & 7];

 return 0;
}
