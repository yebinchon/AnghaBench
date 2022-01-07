
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int esc_npar; int* esc_par; unsigned char f_color; void* highlight; } ;







 unsigned char TAC_RESET ;



 void* TAX_BLINK ;
 void* TAX_RESET ;
 void* TAX_REVER ;
 void* TAX_UNDER ;

__attribute__((used)) static void
tty3270_set_attributes(struct tty3270 *tp)
{
 static unsigned char f_colors[] = {
  134, 131, 133, 128, 135,
  132, 130, 129, 0, 134
 };
 int i, attr;

 for (i = 0; i <= tp->esc_npar; i++) {
  attr = tp->esc_par[i];
  switch (attr) {
  case 0:
   tp->highlight = TAX_RESET;
   tp->f_color = TAC_RESET;
   break;

  case 4:
   tp->highlight = TAX_UNDER;
   break;
  case 5:
   tp->highlight = TAX_BLINK;
   break;
  case 7:
   tp->highlight = TAX_REVER;
   break;
  case 24:
   if (tp->highlight == TAX_UNDER)
    tp->highlight = TAX_RESET;
   break;
  case 25:
   if (tp->highlight == TAX_BLINK)
    tp->highlight = TAX_RESET;
   break;
  case 27:
   if (tp->highlight == TAX_REVER)
    tp->highlight = TAX_RESET;
   break;

  case 30:
  case 31:
  case 32:
  case 33:
  case 34:
  case 35:
  case 36:
  case 37:
  case 39:
   tp->f_color = f_colors[attr - 30];
   break;
  }
 }
}
