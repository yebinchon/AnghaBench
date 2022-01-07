
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_16 (unsigned char const*) ;

__attribute__((used)) static int configure_function(const unsigned char *buf, int *more)
{




 *more = get_16(buf);

 return 2;
}
