
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gru_wait_proc (void*) ;

__attribute__((used)) static inline int gru_wait(void *cb)
{
 return gru_wait_proc(cb);
}
