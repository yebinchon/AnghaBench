
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq16 {int member_1; int const member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int dev_dbg_f (int ,char*) ;
 int patch_cr157 (struct zd_chip*) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_chip_lock_phy_regs (struct zd_chip*) ;
 int zd_chip_unlock_phy_regs (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

__attribute__((used)) static int zd1211_hw_reset_phy(struct zd_chip *chip)
{
 static const struct zd_ioreq16 ioreqs[] = {
  { 268, 0x0a }, { 267, 0x06 }, { 202, 0x26 },
  { 189, 0x38 }, { 178, 0x80 }, { 138, 0xa0 },
  { 266, 0x81 }, { 255, 0x00 }, { 244, 0x7f },
  { 237, 0x8c }, { 230, 0x80 }, { 221, 0x3d },
  { 218, 0x20 }, { 207, 0x1e }, { 204, 0x0a },
  { 203, 0x48 }, { 201, 0x0c }, { 198, 0x0c },
  { 197, 0x23 }, { 196, 0x90 }, { 195, 0x14 },
  { 194, 0x40 }, { 193, 0x10 }, { 192, 0x19 },
  { 191, 0x7f }, { 190, 0x80 }, { 188, 0x4b },
  { 187, 0x60 }, { 186, 0x43 }, { 185, 0x08 },
  { 184, 0x06 }, { 183, 0x0a }, { 182, 0x00 },
  { 181, 0x00 }, { 180, 0x38 }, { 179, 0x0c },
  { 177, 0x84 }, { 176, 0x2a }, { 175, 0x80 },
  { 174, 0x10 }, { 173, 0x12 }, { 172, 0xff },
  { 171, 0x1E }, { 170, 0x26 }, { 169, 0x5b },
  { 166, 0xd0 }, { 165, 0x04 }, { 164, 0x58 },
  { 163, 0xc9 }, { 162, 0x88 }, { 161, 0x41 },
  { 159, 0x23 }, { 158, 0x10 }, { 157, 0xff },
  { 156, 0x32 }, { 155, 0x30 }, { 154, 0x65 },
  { 153, 0x41 }, { 152, 0x1b }, { 151, 0x30 },
  { 150, 0x68 }, { 148, 0x64 }, { 147, 0x64 },
  { 146, 0x00 }, { 145, 0x00 }, { 144, 0x00 },
  { 143, 0x02 }, { 142, 0x00 }, { 141, 0x00 },
  { 140, 0xff }, { 139, 0xfc }, { 137, 0x00 },
  { 136, 0x00 }, { 135, 0x00 }, { 134, 0x08 },
  { 133, 0x00 }, { 132, 0x00 }, { 131, 0xff },
  { 130, 0xe7 }, { 129, 0x00 }, { 128, 0x00 },
  { 265, 0x00 }, { 264, 0xae }, { 263, 0x02 },
  { 262, 0x00 }, { 261, 0x03 }, { 260, 0x65 },
  { 259, 0x04 }, { 258, 0x00 }, { 257, 0x0a },
  { 256, 0xaa }, { 254, 0xaa }, { 253, 0x25 },
  { 252, 0x25 }, { 251, 0x00 }, { 245, 0x1e },
  { 242, 0x90 }, { 241, 0x00 }, { 240, 0x00 },
  { },
  { 168, 0x00 }, { 167, 0x00 }, { 160, 0x00 },
  { 149, 0x00 }, { 138, 0x20 }, { 244, 0xf0 },
  { 201, 0x0e }, { 198, 0x0e }, { 192, 0x10 },
  { 173, 0x33 }, { 171, 0x1E }, { 145, 0x24 },
  { 144, 0x04 }, { 143, 0x00 }, { 142, 0x0C },
  { 141, 0x12 }, { 140, 0x0C }, { 139, 0x00 },
  { 137, 0x10 }, { 136, 0x08 }, { 134, 0x00 },
  { 133, 0x01 }, { 132, 0x00 }, { 131, 0x50 },
  { 130, 0x37 }, { 129, 0x35 }, { 264, 0x13 },
  { 263, 0x27 }, { 262, 0x27 }, { 261, 0x18 },
  { 260, 0x12 }, { 256, 0x27 }, { 254, 0x27 },
  { 253, 0x27 }, { 252, 0x27 }, { 251, 0x27 },
  { 250, 0x27 }, { 249, 0x26 }, { 248, 0x24 },
  { 247, 0xfc }, { 246, 0xfa }, { 243, 0x4f },
  { 242, 0xaa }, { 240, 0x03 }, { 239, 0x14 },
  { 238, 0x12 }, { 236, 0x10 }, { 235, 0x0C },
  { 234, 0xdf }, { 233, 0x40 }, { 232, 0xa0 },
  { 231, 0xb0 }, { 229, 0x99 }, { 228, 0x82 },
  { 227, 0x54 }, { 226, 0x1c }, { 225, 0x6c },
  { 224, 0x07 }, { 223, 0x4c }, { 222, 0x50 },
  { 220, 0x0e }, { 219, 0x18 }, { 217, 0xfe },
  { 216, 0xee }, { 215, 0xaa }, { 214, 0xfa },
  { 213, 0xfa }, { 212, 0xea }, { 211, 0xbe },
  { 210, 0xbe }, { 209, 0x6a }, { 208, 0xba },
  { 206, 0xba }, { 205, 0xba },

  { 199, 0x7d },
  { },
  { 200, 0x30 },
 };

 int r, t;

 dev_dbg_f(zd_chip_dev(chip), "\n");

 r = zd_chip_lock_phy_regs(chip);
 if (r)
  goto out;

 r = zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
 if (r)
  goto unlock;

 r = patch_cr157(chip);
unlock:
 t = zd_chip_unlock_phy_regs(chip);
 if (t && !r)
  r = t;
out:
 return r;
}
