
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_1__ u16 ;
struct sd {int dummy; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;
 int STV_ISO_ENABLE ;
 int stv06xx_write_bridge (struct sd*,TYPE_1__ const,TYPE_1__ const) ;

__attribute__((used)) static int st6422_init(struct sd *sd)
{
 int err = 0, i;

 const u16 st6422_bridge_init[][2] = {
  { STV_ISO_ENABLE, 0x00 },
  { 0x1436, 0x00 },
  { 0x1432, 0x03 },
  { 0x143a, 0xf9 },
  { 0x0509, 0x38 },
  { 0x050a, 0x38 },
  { 0x050b, 0x38 },
  { 0x050c, 0x2a },
  { 0x050d, 0x01 },


  { 0x1431, 0x00 },
  { 0x1433, 0x34 },
  { 0x1438, 0x18 },



  { 0x1439, 0x00 },


  { 0x143b, 0x05 },
  { 0x143c, 0x00 },





  { 0x143e, 0x01 },
  { 0x143d, 0x00 },

  { 0x1442, 0xe2 },
  { 0x1500, 0xd0 },
  { 0x1500, 0xd0 },
  { 0x1500, 0x50 },

  { 0x1501, 0xaf },


  { 0x1502, 0xc2 },


  { 0x1503, 0x45 },


  { 0x1505, 0x02 },




  { 0x150e, 0x8e },
  { 0x150f, 0x37 },
  { 0x15c0, 0x00 },
  { 0x15c3, 0x08 },


  { 0x143f, 0x01 },

 };

 for (i = 0; i < ARRAY_SIZE(st6422_bridge_init) && !err; i++) {
  err = stv06xx_write_bridge(sd, st6422_bridge_init[i][0],
            st6422_bridge_init[i][1]);
 }

 return err;
}
