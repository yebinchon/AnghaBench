
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long beat_put_term_char (int ,int,int,int ) ;
 int celleb_vtermno ;

__attribute__((used)) static void udbg_putc_beat(char c)
{
 unsigned long rc;

 if (c == '\n')
  udbg_putc_beat('\r');

 rc = beat_put_term_char(celleb_vtermno, 1, (uint64_t)c << 56, 0);
}
