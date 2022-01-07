
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cols ;
 int lines ;
 int memcpy (char*,char*,int) ;
 char* vidmem ;

__attribute__((used)) static inline void scroll(void)
{
 int i;

 memcpy(vidmem, vidmem + cols * 2, (lines - 1) * cols * 2);
 for (i = (lines - 1) * cols * 2; i < lines * cols * 2; i += 2)
  vidmem[i] = ' ';
}
