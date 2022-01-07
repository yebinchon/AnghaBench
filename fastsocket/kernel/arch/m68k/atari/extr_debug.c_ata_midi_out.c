
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mid_ctrl; char mid_data; } ;


 int ACIA_TDRE ;
 TYPE_1__ acia ;
 int barrier () ;

__attribute__((used)) static inline void ata_midi_out(char c)
{
 while (!(acia.mid_ctrl & ACIA_TDRE))
  barrier();
 acia.mid_data = c;
}
