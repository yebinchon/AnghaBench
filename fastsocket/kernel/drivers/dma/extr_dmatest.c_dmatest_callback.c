
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete (void*) ;

__attribute__((used)) static void dmatest_callback(void *completion)
{
 complete(completion);
}
