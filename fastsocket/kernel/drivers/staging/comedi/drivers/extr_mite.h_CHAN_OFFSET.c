
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int CHAN_OFFSET(int channel)
{
 return 0x500 + 0x100 * channel;
}
