
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib7000p_state {int dummy; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib7000p_sad_calib(struct dib7000p_state *state)
{


 dib7000p_write_word(state, 73, (0 << 1) | (0 << 0));
 dib7000p_write_word(state, 74, 776);


 dib7000p_write_word(state, 73, (1 << 0));
 dib7000p_write_word(state, 73, (0 << 0));

 msleep(1);

 return 0;
}
