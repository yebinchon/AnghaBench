
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open (int ,int ) ;
 int perror (int ) ;
 int unload_heads_path ;

int valid_disk(void)
{
 int fd = open(unload_heads_path, O_RDONLY);
 if (fd < 0) {
  perror(unload_heads_path);
  return 0;
 }

 close(fd);
 return 1;
}
