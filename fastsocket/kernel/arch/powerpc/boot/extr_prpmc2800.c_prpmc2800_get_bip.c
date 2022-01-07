
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpd ;
typedef int u8 ;
struct prpmc2800_board_info {int dummy; } ;


 int EEPROM2_ADDR ;
 int fatal (char*) ;
 int memset (int*,int ,int) ;
 int mv64x60_i2c_close () ;
 scalar_t__ mv64x60_i2c_open () ;
 int mv64x60_i2c_read (int ,int*,int,int,int) ;
 int printf (char*,...) ;
 struct prpmc2800_board_info* prpmc2800_get_board_info (int*) ;

__attribute__((used)) static struct prpmc2800_board_info *prpmc2800_get_bip(void)
{
 struct prpmc2800_board_info *bip;
 u8 vpd[5];
 int rc;

 if (mv64x60_i2c_open())
  fatal("Error: Can't open i2c device\n\r");


 memset(vpd, 0, sizeof(vpd));
 rc = mv64x60_i2c_read(EEPROM2_ADDR, vpd, 0x1fde, 2, sizeof(vpd));
 if (rc < 0)
  fatal("Error: Couldn't read eeprom2\n\r");
 mv64x60_i2c_close();


 bip = prpmc2800_get_board_info(vpd);
 if (bip == ((void*)0)) {
  printf("Error: Unsupported board or corrupted VPD:\n\r");
  printf("  0x%x 0x%x 0x%x 0x%x 0x%x\n\r",
    vpd[0], vpd[1], vpd[2], vpd[3], vpd[4]);
  printf("Using device tree defaults...\n\r");
 }

 return bip;
}
