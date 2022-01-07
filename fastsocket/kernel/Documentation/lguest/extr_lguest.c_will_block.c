
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static bool will_block(int fd)
{
 fd_set fdset;
 struct timeval zero = { 0, 0 };
 FD_ZERO(&fdset);
 FD_SET(fd, &fdset);
 return select(fd+1, &fdset, ((void*)0), ((void*)0), &zero) != 1;
}
