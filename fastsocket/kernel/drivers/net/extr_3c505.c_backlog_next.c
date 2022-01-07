
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BACKLOG_SIZE ;

__attribute__((used)) static inline unsigned int backlog_next(unsigned int n)
{
 return (n + 1) % BACKLOG_SIZE;
}
