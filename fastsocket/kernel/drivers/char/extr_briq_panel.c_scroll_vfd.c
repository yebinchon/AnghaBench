
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vfd ;
 int vfd_cursor ;

__attribute__((used)) static void scroll_vfd( void )
{
 int i;

 for (i=0; i<20; i++) {
  vfd[i] = vfd[i+20];
  vfd[i+20] = ' ';
 }
 vfd_cursor = 20;
}
