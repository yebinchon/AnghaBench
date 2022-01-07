
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;
__attribute__((used)) static const char *ResourceType(enum mlx4_resource rt)
{
 switch (rt) {
 case 130: return "RES_QP";
 case 136: return "RES_CQ";
 case 129: return "RES_SRQ";
 case 132: return "RES_MPT";
 case 131: return "RES_MTT";
 case 133: return "RES_MAC";
 case 135: return "RES_EQ";
 case 137: return "RES_COUNTER";
 case 134: return "RES_FS_RULE";
 case 128: return "RES_XRCD";
 default: return "Unknown resource type !!!";
 };
}
