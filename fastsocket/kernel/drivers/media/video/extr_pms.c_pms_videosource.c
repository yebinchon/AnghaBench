
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvv_write (int,int) ;

__attribute__((used)) static void pms_videosource(short source)
{
 mvv_write(0x2E, source?0x31:0x30);
}
