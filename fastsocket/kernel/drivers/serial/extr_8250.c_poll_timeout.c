
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int poll_timeout(int timeout)
{
 return timeout > 6 ? (timeout / 2 - 2) : 1;
}
