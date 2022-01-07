
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_window_high () ;
 int flush_window_low () ;
 scalar_t__ high_loaded ;

__attribute__((used)) static void flush_window(void)
{
 if (high_loaded)
  flush_window_high();
 else
  flush_window_low();
}
