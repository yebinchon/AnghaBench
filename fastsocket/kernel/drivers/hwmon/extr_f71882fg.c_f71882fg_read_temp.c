
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct f71882fg_data {scalar_t__ type; } ;


 int F71882FG_REG_TEMP (int) ;
 scalar_t__ f71858fg ;
 int f71882fg_read16 (struct f71882fg_data*,int ) ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;

__attribute__((used)) static u16 f71882fg_read_temp(struct f71882fg_data *data, int nr)
{
 if (data->type == f71858fg)
  return f71882fg_read16(data, F71882FG_REG_TEMP(nr));
 else
  return f71882fg_read8(data, F71882FG_REG_TEMP(nr));
}
