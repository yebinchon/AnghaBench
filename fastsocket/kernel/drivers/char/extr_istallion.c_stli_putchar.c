
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int stli_flushchars (struct tty_struct*) ;
 unsigned char* stli_txcookbuf ;
 int stli_txcooksize ;
 struct tty_struct* stli_txcooktty ;

__attribute__((used)) static int stli_putchar(struct tty_struct *tty, unsigned char ch)
{
 if (tty != stli_txcooktty) {
  if (stli_txcooktty != ((void*)0))
   stli_flushchars(stli_txcooktty);
  stli_txcooktty = tty;
 }

 stli_txcookbuf[stli_txcooksize++] = ch;
 return 0;
}
