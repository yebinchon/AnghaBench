
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FirstFrag ;
 int LastFrag ;

__attribute__((used)) static inline int rtl8169_fragmented_frame(u32 status)
{
 return (status & (FirstFrag | LastFrag)) != (FirstFrag | LastFrag);
}
