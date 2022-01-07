
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atapi_msf {void* frame; void* second; void* minute; } ;


 void* bcd2bin (void*) ;

__attribute__((used)) static void msf_from_bcd(struct atapi_msf *msf)
{
 msf->minute = bcd2bin(msf->minute);
 msf->second = bcd2bin(msf->second);
 msf->frame = bcd2bin(msf->frame);
}
