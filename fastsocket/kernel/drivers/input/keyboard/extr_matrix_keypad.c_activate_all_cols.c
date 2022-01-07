
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {int num_col_gpios; } ;


 int __activate_col (struct matrix_keypad_platform_data const*,int,int) ;

__attribute__((used)) static void activate_all_cols(const struct matrix_keypad_platform_data *pdata,
         bool on)
{
 int col;

 for (col = 0; col < pdata->num_col_gpios; col++)
  __activate_col(pdata, col, on);
}
