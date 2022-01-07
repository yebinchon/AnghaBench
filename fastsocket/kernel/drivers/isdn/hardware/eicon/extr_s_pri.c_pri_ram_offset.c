
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int ADAPTER ;


 scalar_t__ MP_SHARED_RAM_OFFSET ;

__attribute__((used)) static dword pri_ram_offset (ADAPTER* a) {
 return ((dword)MP_SHARED_RAM_OFFSET);
}
