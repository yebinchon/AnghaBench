
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* di_map; } ;
typedef TYPE_1__ hil_mlc ;



__attribute__((used)) static void hil_mlc_clear_di_map(hil_mlc *mlc, int val)
{
 int j;

 for (j = val; j < 7 ; j++)
  mlc->di_map[j] = -1;
}
