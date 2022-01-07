
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 storvsc_get_version(u8 major, u8 minor)
{
 u16 version;

 version = ((major << 8) | minor);
 return version;
}
