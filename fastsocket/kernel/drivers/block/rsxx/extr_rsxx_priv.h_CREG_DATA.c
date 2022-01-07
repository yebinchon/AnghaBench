
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CREG_DATA0 ;

__attribute__((used)) static inline unsigned int CREG_DATA(int N)
{
 return CREG_DATA0 + (N << 2);
}
