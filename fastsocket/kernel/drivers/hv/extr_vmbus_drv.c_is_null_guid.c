
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
typedef int __u8 ;


 scalar_t__ memcmp (int const*,int *,int) ;
 int null_guid ;

__attribute__((used)) static inline bool is_null_guid(const __u8 *guid)
{
 if (memcmp(guid, &null_guid, sizeof(uuid_le)))
  return 0;
 return 1;
}
