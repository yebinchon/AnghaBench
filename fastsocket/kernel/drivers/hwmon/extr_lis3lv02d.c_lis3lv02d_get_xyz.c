
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z; int y; int x; } ;
struct lis3lv02d {int (* read_data ) (struct lis3lv02d*,int ) ;TYPE_1__ ac; } ;


 int OUTX ;
 int OUTY ;
 int OUTZ ;
 int lis3lv02d_get_axis (int ,int*) ;
 int stub1 (struct lis3lv02d*,int ) ;
 int stub2 (struct lis3lv02d*,int ) ;
 int stub3 (struct lis3lv02d*,int ) ;

__attribute__((used)) static void lis3lv02d_get_xyz(struct lis3lv02d *lis3, int *x, int *y, int *z)
{
 int position[3];

 position[0] = lis3->read_data(lis3, OUTX);
 position[1] = lis3->read_data(lis3, OUTY);
 position[2] = lis3->read_data(lis3, OUTZ);

 *x = lis3lv02d_get_axis(lis3->ac.x, position);
 *y = lis3lv02d_get_axis(lis3->ac.y, position);
 *z = lis3lv02d_get_axis(lis3->ac.z, position);
}
