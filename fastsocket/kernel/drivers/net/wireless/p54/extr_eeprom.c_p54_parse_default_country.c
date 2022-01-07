
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pda_country {scalar_t__ flags; int alpha2; } ;
struct ieee80211_hw {int wiphy; } ;


 int DUMP_PREFIX_NONE ;
 scalar_t__ PDR_COUNTRY_CERT_CODE_PSEUDO ;
 int print_hex_dump_bytes (char*,int ,void*,int) ;
 int regulatory_hint (int ,int ) ;
 int wiphy_err (int ,char*,...) ;

__attribute__((used)) static void p54_parse_default_country(struct ieee80211_hw *dev,
          void *data, int len)
{
 struct pda_country *country;

 if (len != sizeof(*country)) {
  wiphy_err(dev->wiphy,
     "found possible invalid default country eeprom entry. (entry size: %d)\n",
     len);

  print_hex_dump_bytes("country:", DUMP_PREFIX_NONE,
         data, len);

  wiphy_err(dev->wiphy, "please report this issue.\n");
  return;
 }

 country = (struct pda_country *) data;
 if (country->flags == PDR_COUNTRY_CERT_CODE_PSEUDO)
  regulatory_hint(dev->wiphy, country->alpha2);
 else {





 }
}
