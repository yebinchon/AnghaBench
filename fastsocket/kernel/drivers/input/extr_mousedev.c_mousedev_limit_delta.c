
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int mousedev_limit_delta(int delta, int limit)
{
 return delta > limit ? limit : (delta < -limit ? -limit : delta);
}
