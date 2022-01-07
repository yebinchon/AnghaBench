
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bf54x_kpad {int dummy; } ;


 int KPAD_PRESSED ;
 int bfin_read_KPAD_STAT () ;

__attribute__((used)) static inline u16 bfin_kpad_get_keypressed(struct bf54x_kpad *bf54x_kpad)
{
 return (bfin_read_KPAD_STAT() & KPAD_PRESSED);
}
