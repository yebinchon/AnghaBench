
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct skge_hw {int chip_id; } ;
struct TYPE_3__ {int id; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* skge_chips ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *skge_board_name(const struct skge_hw *hw)
{
 int i;
 static char buf[16];

 for (i = 0; i < ARRAY_SIZE(skge_chips); i++)
  if (skge_chips[i].id == hw->chip_id)
   return skge_chips[i].name;

 snprintf(buf, sizeof buf, "chipid 0x%x", hw->chip_id);
 return buf;
}
