
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int word ;
typedef size_t byte ;
struct TYPE_7__ {long requested_options_conn; long requested_options; TYPE_2__* adapter; TYPE_1__* appl; } ;
struct TYPE_6__ {long* requested_options_table; int manufacturer_features; } ;
struct TYPE_5__ {int Id; } ;
typedef TYPE_3__ PLCI ;


 int B1_FACILITY_DTMFR ;
 int B1_FACILITY_DTMFX ;
 int MANUFACTURER_FEATURE_SOFTDTMF_RECEIVE ;
 int MANUFACTURER_FEATURE_SOFTDTMF_SEND ;
 int MANUFACTURER_FEATURE_V18 ;
 int MANUFACTURER_FEATURE_VOWN ;
 long PRIVATE_DTMF_TONE ;
 int* b1_facilities_table ;

__attribute__((used)) static word get_b1_facilities (PLCI * plci, byte b1_resource)
{
  word b1_facilities;

  b1_facilities = b1_facilities_table[b1_resource];
  if ((b1_resource == 9) || (b1_resource == 20) || (b1_resource == 25))
  {

    if (!(((plci->requested_options_conn | plci->requested_options) & (1L << PRIVATE_DTMF_TONE))
       || (plci->appl && (plci->adapter->requested_options_table[plci->appl->Id-1] & (1L << PRIVATE_DTMF_TONE)))))

    {
      if (plci->adapter->manufacturer_features & MANUFACTURER_FEATURE_SOFTDTMF_SEND)
        b1_facilities |= B1_FACILITY_DTMFX;
      if (plci->adapter->manufacturer_features & MANUFACTURER_FEATURE_SOFTDTMF_RECEIVE)
        b1_facilities |= B1_FACILITY_DTMFR;
    }
  }
  if ((b1_resource == 17) || (b1_resource == 18))
  {
    if (plci->adapter->manufacturer_features & (MANUFACTURER_FEATURE_V18 | MANUFACTURER_FEATURE_VOWN))
      b1_facilities |= B1_FACILITY_DTMFX | B1_FACILITY_DTMFR;
  }





  return (b1_facilities);
}
