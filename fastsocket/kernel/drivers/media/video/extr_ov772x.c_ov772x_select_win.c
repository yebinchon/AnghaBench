
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ov772x_win_size {scalar_t__ height; scalar_t__ width; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ abs (scalar_t__) ;
 struct ov772x_win_size ov772x_win_qvga ;
 struct ov772x_win_size ov772x_win_vga ;

__attribute__((used)) static const struct ov772x_win_size *ov772x_select_win(u32 width, u32 height)
{
 __u32 diff;
 const struct ov772x_win_size *win;


 diff = abs(width - ov772x_win_qvga.width) +
  abs(height - ov772x_win_qvga.height);
 win = &ov772x_win_qvga;


 if (diff >
     abs(width - ov772x_win_vga.width) +
     abs(height - ov772x_win_vga.height))
  win = &ov772x_win_vga;

 return win;
}
