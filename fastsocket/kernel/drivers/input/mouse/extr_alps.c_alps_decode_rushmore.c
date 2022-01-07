
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_fields {int dummy; } ;


 int alps_decode_pinnacle (struct alps_fields*,unsigned char*) ;

__attribute__((used)) static void alps_decode_rushmore(struct alps_fields *f, unsigned char *p)
{
 alps_decode_pinnacle(f, p);
}
