
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; int duplex; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int MAX_NUM_SETTINGS ;
 TYPE_1__* settings ;

__attribute__((used)) static inline int phy_find_setting(int speed, int duplex)
{
 int idx = 0;

 while (idx < ARRAY_SIZE(settings) &&
   (settings[idx].speed != speed ||
   settings[idx].duplex != duplex))
  idx++;

 return idx < MAX_NUM_SETTINGS ? idx : MAX_NUM_SETTINGS - 1;
}
