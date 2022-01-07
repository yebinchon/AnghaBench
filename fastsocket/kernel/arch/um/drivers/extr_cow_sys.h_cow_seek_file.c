
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int os_seek_file (int,int ) ;

__attribute__((used)) static inline int cow_seek_file(int fd, __u64 offset)
{
 return os_seek_file(fd, offset);
}
