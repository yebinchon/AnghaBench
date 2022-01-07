
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib8000_state {int dummy; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_restart_agc(struct dib8000_state *state)
{

 dib8000_write_word(state, 770, 0x0a00);
 dib8000_write_word(state, 770, 0x0000);
}
