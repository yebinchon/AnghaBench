
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {scalar_t__ mddev; } ;


 char* mdname (scalar_t__) ;

__attribute__((used)) static inline char *bmname(struct bitmap *bitmap)
{
 return bitmap->mddev ? mdname(bitmap->mddev) : "mdX";
}
