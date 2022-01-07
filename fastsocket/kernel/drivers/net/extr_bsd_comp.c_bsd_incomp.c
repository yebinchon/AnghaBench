
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_compress (void*,unsigned char*,char*,int,int ) ;

__attribute__((used)) static void bsd_incomp (void *state, unsigned char *ibuf, int icnt)
  {
    (void) bsd_compress (state, ibuf, (char *) 0, icnt, 0);
  }
