
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TTS_WRITABLE ;
 int dtlk_port_tts ;
 int inb_p (int ) ;
 int printk (char*,int) ;

__attribute__((used)) static int dtlk_writeable(void)
{




 return inb_p(dtlk_port_tts) & TTS_WRITABLE;
}
