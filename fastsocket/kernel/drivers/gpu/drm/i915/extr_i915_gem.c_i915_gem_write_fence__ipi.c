
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wbinvd () ;

__attribute__((used)) static void i915_gem_write_fence__ipi(void *data)
{
 wbinvd();
}
