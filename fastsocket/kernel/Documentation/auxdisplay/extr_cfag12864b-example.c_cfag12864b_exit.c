
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFAG12864B_SIZE ;
 int cfag12864b_fd ;
 int cfag12864b_mem ;
 int close (int ) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void cfag12864b_exit(void)
{
 munmap(cfag12864b_mem, CFAG12864B_SIZE);
 close(cfag12864b_fd);
}
