
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTRY_BITPOS_QWORDS ;
 int ENTRY_MASK_QWORDS ;

__attribute__((used)) static inline int get_entry_len(int entry)
{
 return ((entry & ENTRY_MASK_QWORDS) >> ENTRY_BITPOS_QWORDS) << 3;
}
