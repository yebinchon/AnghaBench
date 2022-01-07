
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MT9M111_OUTFMT_BYPASS_IFP ;
 int mt9m111_setup_pixfmt (struct i2c_client*,int ) ;

__attribute__((used)) static int mt9m111_setfmt_bayer10(struct i2c_client *client)
{
 return mt9m111_setup_pixfmt(client, MT9M111_OUTFMT_BYPASS_IFP);
}
