
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAN_OFFSET (int) ;

__attribute__((used)) static inline int MITE_LLKAR(int channel)
{
 return CHAN_OFFSET(channel) + 0x24;
}
