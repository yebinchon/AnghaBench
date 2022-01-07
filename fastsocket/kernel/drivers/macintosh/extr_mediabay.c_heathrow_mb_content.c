
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int dummy; } ;


 int HEATHROW_MBCR ;
 int MB_IN32 (struct media_bay_info*,int ) ;

__attribute__((used)) static u8
heathrow_mb_content(struct media_bay_info *bay)
{
 return (MB_IN32(bay, HEATHROW_MBCR) >> 12) & 7;
}
