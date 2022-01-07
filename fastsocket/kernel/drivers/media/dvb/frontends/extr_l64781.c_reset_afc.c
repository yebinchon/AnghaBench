
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {int dummy; } ;


 int l64781_writereg (struct l64781_state*,int,int) ;

__attribute__((used)) static void reset_afc (struct l64781_state* state)
{


 l64781_writereg (state, 0x07, 0x9e);
 l64781_writereg (state, 0x08, 0);
 l64781_writereg (state, 0x09, 0);
 l64781_writereg (state, 0x0a, 0);
 l64781_writereg (state, 0x07, 0x8e);
 l64781_writereg (state, 0x0e, 0);
 l64781_writereg (state, 0x11, 0x80);
 l64781_writereg (state, 0x10, 0);
 l64781_writereg (state, 0x12, 0);
 l64781_writereg (state, 0x13, 0);
 l64781_writereg (state, 0x11, 0x00);
}
