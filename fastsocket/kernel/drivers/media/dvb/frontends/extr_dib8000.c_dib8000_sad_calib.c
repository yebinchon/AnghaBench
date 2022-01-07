
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib8000_state {int dummy; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib8000_sad_calib(struct dib8000_state *state)
{

 dib8000_write_word(state, 923, (0 << 1) | (0 << 0));
 dib8000_write_word(state, 924, 776);


 dib8000_write_word(state, 923, (1 << 0));
 dib8000_write_word(state, 923, (0 << 0));

 msleep(1);
 return 0;
}
