
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_top; scalar_t__ vc_decom; } ;


 int gotoxy (struct vc_data*,int,int) ;

__attribute__((used)) static void gotoxay(struct vc_data *vc, int new_x, int new_y)
{
 gotoxy(vc, new_x, vc->vc_decom ? (vc->vc_top + new_y) : new_y);
}
