
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_list; } ;


 int MAXKEY ;
 TYPE_1__* agp_bridge ;
 int clear_bit (int,int ) ;

void agp_free_key(int key)
{
 if (key < 0)
  return;

 if (key < MAXKEY)
  clear_bit(key, agp_bridge->key_list);
}
