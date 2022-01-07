
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sd {int dummy; } ;


 scalar_t__ HDCS_IDENT ;
 scalar_t__ HDCS_ROWEXPH ;
 int info (char*,...) ;
 int stv06xx_read_sensor (struct sd*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int hdcs_dump(struct sd *sd)
{
 u16 reg, val;

 info("Dumping sensor registers:");

 for (reg = HDCS_IDENT; reg <= HDCS_ROWEXPH; reg++) {
  stv06xx_read_sensor(sd, reg, &val);
  info("reg 0x%02x = 0x%02x", reg, val);
 }
 return 0;
}
