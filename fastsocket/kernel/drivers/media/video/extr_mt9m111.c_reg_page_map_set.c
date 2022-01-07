
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int MT9M111_PAGE_MAP ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;
 int swab16 (int) ;

__attribute__((used)) static int reg_page_map_set(struct i2c_client *client, const u16 reg)
{
 int ret;
 u16 page;
 static int lastpage = -1;

 page = (reg >> 8);
 if (page == lastpage)
  return 0;
 if (page > 2)
  return -EINVAL;

 ret = i2c_smbus_write_word_data(client, MT9M111_PAGE_MAP, swab16(page));
 if (!ret)
  lastpage = page;
 return ret;
}
