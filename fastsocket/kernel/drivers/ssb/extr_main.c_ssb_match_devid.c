
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device_id {scalar_t__ vendor; scalar_t__ coreid; scalar_t__ revision; } ;


 scalar_t__ SSB_ANY_ID ;
 scalar_t__ SSB_ANY_REV ;
 scalar_t__ SSB_ANY_VENDOR ;

__attribute__((used)) static int ssb_match_devid(const struct ssb_device_id *tabid,
      const struct ssb_device_id *devid)
{
 if ((tabid->vendor != devid->vendor) &&
     tabid->vendor != SSB_ANY_VENDOR)
  return 0;
 if ((tabid->coreid != devid->coreid) &&
     tabid->coreid != SSB_ANY_ID)
  return 0;
 if ((tabid->revision != devid->revision) &&
     tabid->revision != SSB_ANY_REV)
  return 0;
 return 1;
}
