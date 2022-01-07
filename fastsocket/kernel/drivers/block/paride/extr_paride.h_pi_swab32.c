
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 pi_swab32( char *b, int k)

{ union { u32 u; char f[4]; } r;

 r.f[0]=b[4*k+1]; r.f[1]=b[4*k];
 r.f[2]=b[4*k+3]; r.f[3]=b[4*k+2];
        return r.u;
}
