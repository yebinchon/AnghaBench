
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nss_name; } ;
struct TYPE_4__ {TYPE_1__ ccw; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;


 int EBCASC (char*,size_t) ;
 size_t NSS_NAME_SIZE ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static void reipl_get_ascii_nss_name(char *dst,
         struct ipl_parameter_block *ipb)
{
 memcpy(dst, ipb->ipl_info.ccw.nss_name, NSS_NAME_SIZE);
 EBCASC(dst, NSS_NAME_SIZE);
 dst[NSS_NAME_SIZE] = 0;
}
