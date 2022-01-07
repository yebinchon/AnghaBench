
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int member_1; int member_0; } ;
struct zd_chip {int mutex; } ;


 int ARRAY_SIZE (struct zd_ioreq32 const*) ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite32a_locked (struct zd_chip*,struct zd_ioreq32 const*,int ) ;

__attribute__((used)) static int zd1211b_hw_init_hmac(struct zd_chip *chip)
{
 static const struct zd_ioreq32 ioreqs[] = {
  { 130, 128 },
  { 134, 0x007f003f },
  { 133, 0x007f003f },
  { 132, 0x003f001f },
  { 131, 0x001f000f },
  { 136, 0x00280028 },
  { 135, 0x008C003C },
  { 129, 0x01800824 },
  { 137, 0x000c0eff, },
 };

 dev_dbg_f(zd_chip_dev(chip), "\n");
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 return zd_iowrite32a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
