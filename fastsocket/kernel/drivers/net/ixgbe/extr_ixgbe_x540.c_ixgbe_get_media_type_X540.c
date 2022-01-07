
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;


 int ixgbe_media_type_copper ;

__attribute__((used)) static enum ixgbe_media_type ixgbe_get_media_type_X540(struct ixgbe_hw *hw)
{
 return ixgbe_media_type_copper;
}
