
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 TLan_HashFunc( const u8 *a )
{
        u8 hash;

        hash = (a[0]^a[3]);
        hash ^= ((a[0]^a[3])>>6);
        hash ^= ((a[1]^a[4])<<2);
        hash ^= ((a[1]^a[4])>>4);
        hash ^= ((a[2]^a[5])<<4);
        hash ^= ((a[2]^a[5])>>2);

        return (hash & 077);
}
