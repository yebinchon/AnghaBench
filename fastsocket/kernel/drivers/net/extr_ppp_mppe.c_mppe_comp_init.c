
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mppe_init (void*,unsigned char*,int,int,int,char*) ;

__attribute__((used)) static int
mppe_comp_init(void *arg, unsigned char *options, int optlen, int unit,
        int hdrlen, int debug)
{

 return mppe_init(arg, options, optlen, unit, debug, "mppe_comp_init");
}
