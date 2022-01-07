
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_recov_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int resp_err_recov_pg(unsigned char * p, int pcontrol, int target)
{
 unsigned char err_recov_pg[] = {0x1, 0xa, 0xc0, 11, 240, 0, 0, 0,
     5, 0, 0xff, 0xff};

 memcpy(p, err_recov_pg, sizeof(err_recov_pg));
 if (1 == pcontrol)
  memset(p + 2, 0, sizeof(err_recov_pg) - 2);
 return sizeof(err_recov_pg);
}
