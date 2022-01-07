
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int highlight (int,int ) ;
 int highlight_pointer (int) ;
 int sel_end ;
 int sel_start ;

void
clear_selection(void) {
 highlight_pointer(-1);
 if (sel_start != -1) {
  highlight(sel_start, sel_end);
  sel_start = -1;
 }
}
