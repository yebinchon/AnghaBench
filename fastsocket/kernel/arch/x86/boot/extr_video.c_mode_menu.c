
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SCAN ;
 unsigned int VIDEO_CURRENT_MODE ;
 int display_menu () ;
 unsigned int get_entry () ;
 int getchar_timeout () ;
 int kbd_flush () ;
 int probe_cards (int) ;
 int putchar (char) ;
 int puts (char*) ;

__attribute__((used)) static unsigned int mode_menu(void)
{
 int key;
 unsigned int sel;

 puts("Press <ENTER> to see video modes available, "
      "<SPACE> to continue, or wait 30 sec\n");

 kbd_flush();
 while (1) {
  key = getchar_timeout();
  if (key == ' ' || key == 0)
   return VIDEO_CURRENT_MODE;
  if (key == '\r')
   break;
  putchar('\a');
 }


 for (;;) {
  display_menu();

  puts("Enter a video mode or \"scan\" to scan for "
       "additional modes: ");
  sel = get_entry();
  if (sel != SCAN)
   return sel;

  probe_cards(1);
 }
}
