
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int SSYNC () ;
 int _disable_gptimers (int ) ;

void disable_gptimers_sync(uint16_t mask)
{
 _disable_gptimers(mask);
 SSYNC();
}
