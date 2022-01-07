
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum balloon3_features { ____Placeholder_balloon3_features } balloon3_features ;


 int balloon3_features_present ;

int balloon3_has(enum balloon3_features feature)
{
 return (balloon3_features_present & (1 << feature)) ? 1 : 0;
}
