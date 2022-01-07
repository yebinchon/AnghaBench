
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ visws_board_type ;

int is_visws_box(void)
{
 return visws_board_type >= 0;
}
