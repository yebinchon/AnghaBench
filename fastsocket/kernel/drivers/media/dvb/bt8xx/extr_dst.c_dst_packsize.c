
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union dst_gpio_packet {int psize; } ;
struct dst_state {int bt; } ;


 int DST_IG_TS ;
 int bt878_device_control (int ,int ,union dst_gpio_packet*) ;

__attribute__((used)) static void dst_packsize(struct dst_state *state, int psize)
{
 union dst_gpio_packet bits;

 bits.psize = psize;
 bt878_device_control(state->bt, DST_IG_TS, &bits);
}
