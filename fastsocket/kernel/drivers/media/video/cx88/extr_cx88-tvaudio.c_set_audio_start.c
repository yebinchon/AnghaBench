
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;


 int AUD_INIT ;
 int AUD_INIT_LD ;
 int AUD_SOFT_RESET ;
 int AUD_VOL_CTL ;
 int cx_write (int ,int) ;

__attribute__((used)) static void set_audio_start(struct cx88_core *core, u32 mode)
{

 cx_write(AUD_VOL_CTL, (1 << 6));


 cx_write(AUD_INIT, mode);
 cx_write(AUD_INIT_LD, 0x0001);
 cx_write(AUD_SOFT_RESET, 0x0001);
}
