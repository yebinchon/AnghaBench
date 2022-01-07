
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clockid_t ;


 int FD_TO_CLOCKID (int) ;

__attribute__((used)) static clockid_t get_clockid(int fd)
{



 return ((~(clockid_t) (fd) << 3) | 3);
}
