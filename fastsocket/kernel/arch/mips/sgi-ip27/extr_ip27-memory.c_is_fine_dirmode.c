
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCAL_HUB_L (int ) ;
 int NI_STATUS_REV_ID ;
 int NSRI_REGIONSIZE_MASK ;
 int NSRI_REGIONSIZE_SHFT ;
 int REGIONSIZE_FINE ;

__attribute__((used)) static int is_fine_dirmode(void)
{
 return (((LOCAL_HUB_L(NI_STATUS_REV_ID) & NSRI_REGIONSIZE_MASK)
         >> NSRI_REGIONSIZE_SHFT) & REGIONSIZE_FINE);
}
