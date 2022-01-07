
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 RORu64(u64 x, u64 y)
{
        return (x >> y) | (x << (64 - y));
}
