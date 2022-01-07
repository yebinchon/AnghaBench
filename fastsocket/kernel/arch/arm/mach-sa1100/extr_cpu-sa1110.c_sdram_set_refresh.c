
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MDREFR ;

__attribute__((used)) static inline void sdram_set_refresh(u_int dri)
{
 MDREFR = (MDREFR & 0xffff000f) | (dri << 4);
 (void) MDREFR;
}
