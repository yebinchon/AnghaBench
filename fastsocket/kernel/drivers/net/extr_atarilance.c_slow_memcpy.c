
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFPDELAY () ;

__attribute__((used)) static void *slow_memcpy( void *dst, const void *src, size_t len )

{ char *cto = dst;
 const char *cfrom = src;

 while( len-- ) {
  *cto++ = *cfrom++;
  MFPDELAY();
 }
 return( dst );
}
