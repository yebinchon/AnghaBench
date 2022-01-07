; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_sfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.ixgbe_adapter* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_adapter = type { i32 }

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SFF_IDENTIFIER_SFP = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_CABLE_TECHNOLOGY = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_SFF_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_sr = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_lr = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i8* null, align 8
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_CABLE_SPEC_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASET_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_tyco = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl_active = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_ftl = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_avago = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_active_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [290 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics.  Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter.  Intel Corporation is not responsible for any harm caused by using untested modules.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_sfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 4
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %16, align 8
  store %struct.ixgbe_adapter* %17, %struct.ixgbe_adapter** %4, align 8
  %18 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %23 = bitcast [3 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 24, i1 false)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.1*
  %31 = call i64 %28(%struct.ixgbe_hw.1* %30)
  %32 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %40, i64* %5, align 8
  br label %677

41:                                               ; preds = %1
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %50 = call i64 %46(%struct.ixgbe_hw.0* %48, i32 %49, i64* %8)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %679

54:                                               ; preds = %41
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %58, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = bitcast %struct.ixgbe_hw* %60 to %struct.ixgbe_hw.3*
  %62 = call i32 %59(%struct.ixgbe_hw.3* %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @IXGBE_SFF_IDENTIFIER_SFP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %72, i64* %5, align 8
  br label %676

73:                                               ; preds = %54
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.0*
  %81 = load i32, i32* @IXGBE_SFF_1GBE_COMP_CODES, align 4
  %82 = call i64 %78(%struct.ixgbe_hw.0* %80, i32 %81, i64* %9)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %679

86:                                               ; preds = %73
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %90, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = bitcast %struct.ixgbe_hw* %92 to %struct.ixgbe_hw.0*
  %94 = load i32, i32* @IXGBE_SFF_10GBE_COMP_CODES, align 4
  %95 = call i64 %91(%struct.ixgbe_hw.0* %93, i32 %94, i64* %10)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %679

99:                                               ; preds = %86
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %103, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = bitcast %struct.ixgbe_hw* %105 to %struct.ixgbe_hw.0*
  %107 = load i32, i32* @IXGBE_SFF_CABLE_TECHNOLOGY, align 4
  %108 = call i64 %104(%struct.ixgbe_hw.0* %106, i32 %107, i64* %12)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %679

112:                                              ; preds = %99
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %112
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @ixgbe_sfp_type_da_cu, align 4
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %157

129:                                              ; preds = %119
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* @ixgbe_sfp_type_sr, align 4
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %156

139:                                              ; preds = %129
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* @ixgbe_sfp_type_lr, align 4
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %147 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  br label %155

149:                                              ; preds = %139
  %150 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %134
  br label %157

157:                                              ; preds = %156, %124
  br label %339

158:                                              ; preds = %112
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %338

165:                                              ; preds = %158
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %172 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  br label %186

181:                                              ; preds = %170
  %182 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %184 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  br label %186

186:                                              ; preds = %181, %176
  br label %337

187:                                              ; preds = %165
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %230

192:                                              ; preds = %187
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %194 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %196, align 8
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %199 = bitcast %struct.ixgbe_hw* %198 to %struct.ixgbe_hw.0*
  %200 = load i32, i32* @IXGBE_SFF_CABLE_SPEC_COMP, align 4
  %201 = call i64 %197(%struct.ixgbe_hw.0* %199, i32 %200, i64* %13)
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* @IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %192
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %208 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %214 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %215 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  br label %222

217:                                              ; preds = %206
  %218 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  br label %222

222:                                              ; preds = %217, %212
  br label %229

223:                                              ; preds = %192
  %224 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %227 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %222
  br label %336

230:                                              ; preds = %187
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %233 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %234 = or i64 %232, %233
  %235 = and i64 %231, %234
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %230
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %246 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  br label %253

248:                                              ; preds = %237
  %249 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %250 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %251 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %243
  br label %335

254:                                              ; preds = %230
  %255 = load i64, i64* %9, align 8
  %256 = load i64, i64* @IXGBE_SFF_1GBASET_CAPABLE, align 8
  %257 = and i64 %255, %256
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %254
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %261 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %267 = trunc i64 %266 to i32
  %268 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %269 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 8
  br label %277

271:                                              ; preds = %259
  %272 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %273 = trunc i64 %272 to i32
  %274 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %275 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  store i32 %273, i32* %276, align 8
  br label %277

277:                                              ; preds = %271, %265
  br label %334

278:                                              ; preds = %254
  %279 = load i64, i64* %9, align 8
  %280 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %281 = and i64 %279, %280
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %285 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %283
  %290 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %293 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  br label %301

295:                                              ; preds = %283
  %296 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %297 = trunc i64 %296 to i32
  %298 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %299 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  store i32 %297, i32* %300, align 8
  br label %301

301:                                              ; preds = %295, %289
  br label %333

302:                                              ; preds = %278
  %303 = load i64, i64* %9, align 8
  %304 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %305 = and i64 %303, %304
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %326

307:                                              ; preds = %302
  %308 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %309 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %315 = trunc i64 %314 to i32
  %316 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %317 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 8
  br label %325

319:                                              ; preds = %307
  %320 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %321 = trunc i64 %320 to i32
  %322 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %323 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  store i32 %321, i32* %324, align 8
  br label %325

325:                                              ; preds = %319, %313
  br label %332

326:                                              ; preds = %302
  %327 = load i8*, i8** @ixgbe_sfp_type_unknown, align 8
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %330 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  store i32 %328, i32* %331, align 8
  br label %332

332:                                              ; preds = %326, %325
  br label %333

333:                                              ; preds = %332, %301
  br label %334

334:                                              ; preds = %333, %277
  br label %335

335:                                              ; preds = %334, %253
  br label %336

336:                                              ; preds = %335, %229
  br label %337

337:                                              ; preds = %336, %186
  br label %338

338:                                              ; preds = %337, %158
  br label %339

339:                                              ; preds = %338, %157
  %340 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %341 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %339
  %347 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %348 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 2
  store i32 1, i32* %349, align 8
  br label %350

350:                                              ; preds = %346, %339
  %351 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %352 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 3
  store i32 0, i32* %353, align 4
  %354 = load i64, i64* %9, align 8
  %355 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %356 = and i64 %354, %355
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %350
  %359 = load i64, i64* %10, align 8
  %360 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %361 = and i64 %359, %360
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %373, label %363

363:                                              ; preds = %358, %350
  %364 = load i64, i64* %9, align 8
  %365 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %366 = and i64 %364, %365
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %377

368:                                              ; preds = %363
  %369 = load i64, i64* %10, align 8
  %370 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %371 = and i64 %369, %370
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %368, %358
  %374 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %375 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 3
  store i32 1, i32* %376, align 4
  br label %377

377:                                              ; preds = %373, %368, %363
  %378 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %379 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @ixgbe_phy_nl, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %512

384:                                              ; preds = %377
  %385 = load i64, i64* %8, align 8
  %386 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %387 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 4
  store i64 %385, i64* %388, align 8
  %389 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %390 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 5
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 0
  %393 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %392, align 8
  %394 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %395 = bitcast %struct.ixgbe_hw* %394 to %struct.ixgbe_hw.0*
  %396 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE0, align 4
  %397 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %398 = call i64 %393(%struct.ixgbe_hw.0* %395, i32 %396, i64* %397)
  store i64 %398, i64* %5, align 8
  %399 = load i64, i64* %5, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %384
  br label %679

402:                                              ; preds = %384
  %403 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %404 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %406, align 8
  %408 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %409 = bitcast %struct.ixgbe_hw* %408 to %struct.ixgbe_hw.0*
  %410 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE1, align 4
  %411 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %412 = call i64 %407(%struct.ixgbe_hw.0* %409, i32 %410, i64* %411)
  store i64 %412, i64* %5, align 8
  %413 = load i64, i64* %5, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %402
  br label %679

416:                                              ; preds = %402
  %417 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %418 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 0
  %421 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %420, align 8
  %422 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %423 = bitcast %struct.ixgbe_hw* %422 to %struct.ixgbe_hw.0*
  %424 = load i32, i32* @IXGBE_SFF_VENDOR_OUI_BYTE2, align 4
  %425 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %426 = call i64 %421(%struct.ixgbe_hw.0* %423, i32 %424, i64* %425)
  store i64 %426, i64* %5, align 8
  %427 = load i64, i64* %5, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %416
  br label %679

430:                                              ; preds = %416
  %431 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %432 = load i64, i64* %431, align 16
  %433 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %434 = shl i64 %432, %433
  %435 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %438 = shl i64 %436, %437
  %439 = or i64 %434, %438
  %440 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %441 = load i64, i64* %440, align 16
  %442 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %443 = shl i64 %441, %442
  %444 = or i64 %439, %443
  %445 = trunc i64 %444 to i32
  store i32 %445, i32* %6, align 4
  %446 = load i32, i32* %6, align 4
  switch i32 %446, label %484 [
    i32 128, label %447
    i32 130, label %458
    i32 131, label %474
    i32 129, label %479
  ]

447:                                              ; preds = %430
  %448 = load i64, i64* %12, align 8
  %449 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %450 = and i64 %448, %449
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = load i64, i64* @ixgbe_phy_sfp_passive_tyco, align 8
  %454 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %455 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 1
  store i64 %453, i64* %456, align 8
  br label %457

457:                                              ; preds = %452, %447
  br label %511

458:                                              ; preds = %430
  %459 = load i64, i64* %12, align 8
  %460 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %461 = and i64 %459, %460
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %468

463:                                              ; preds = %458
  %464 = load i64, i64* @ixgbe_phy_sfp_ftl_active, align 8
  %465 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %466 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 1
  store i64 %464, i64* %467, align 8
  br label %473

468:                                              ; preds = %458
  %469 = load i64, i64* @ixgbe_phy_sfp_ftl, align 8
  %470 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %471 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 1
  store i64 %469, i64* %472, align 8
  br label %473

473:                                              ; preds = %468, %463
  br label %511

474:                                              ; preds = %430
  %475 = load i64, i64* @ixgbe_phy_sfp_avago, align 8
  %476 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %477 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 1
  store i64 %475, i64* %478, align 8
  br label %511

479:                                              ; preds = %430
  %480 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %481 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %482 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 1
  store i64 %480, i64* %483, align 8
  br label %511

484:                                              ; preds = %430
  %485 = load i64, i64* %12, align 8
  %486 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %487 = and i64 %485, %486
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %484
  %490 = load i64, i64* @ixgbe_phy_sfp_passive_unknown, align 8
  %491 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %492 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 1
  store i64 %490, i64* %493, align 8
  br label %510

494:                                              ; preds = %484
  %495 = load i64, i64* %12, align 8
  %496 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %497 = and i64 %495, %496
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %494
  %500 = load i64, i64* @ixgbe_phy_sfp_active_unknown, align 8
  %501 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %502 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %502, i32 0, i32 1
  store i64 %500, i64* %503, align 8
  br label %509

504:                                              ; preds = %494
  %505 = load i64, i64* @ixgbe_phy_sfp_unknown, align 8
  %506 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %507 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 1
  store i64 %505, i64* %508, align 8
  br label %509

509:                                              ; preds = %504, %499
  br label %510

510:                                              ; preds = %509, %489
  br label %511

511:                                              ; preds = %510, %479, %474, %473, %457
  br label %512

512:                                              ; preds = %511, %377
  %513 = load i64, i64* %12, align 8
  %514 = load i64, i64* @IXGBE_SFF_DA_PASSIVE_CABLE, align 8
  %515 = load i64, i64* @IXGBE_SFF_DA_ACTIVE_CABLE, align 8
  %516 = or i64 %514, %515
  %517 = and i64 %513, %516
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %512
  store i64 0, i64* %5, align 8
  br label %677

520:                                              ; preds = %512
  %521 = load i64, i64* %10, align 8
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %578

523:                                              ; preds = %520
  %524 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %525 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = sext i32 %527 to i64
  %529 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %530 = icmp eq i64 %528, %529
  br i1 %530, label %578, label %531

531:                                              ; preds = %523
  %532 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %533 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = sext i32 %535 to i64
  %537 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %578, label %539

539:                                              ; preds = %531
  %540 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %541 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = sext i32 %543 to i64
  %545 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %578, label %547

547:                                              ; preds = %539
  %548 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %549 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %578, label %555

555:                                              ; preds = %547
  %556 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %557 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %578, label %563

563:                                              ; preds = %555
  %564 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %565 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sext i32 %567 to i64
  %569 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %578, label %571

571:                                              ; preds = %563
  %572 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %573 = ptrtoint i8* %572 to i64
  %574 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %575 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %575, i32 0, i32 1
  store i64 %573, i64* %576, align 8
  %577 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %577, i64* %5, align 8
  br label %677

578:                                              ; preds = %563, %555, %547, %539, %531, %523, %520
  %579 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %580 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %579, i32 0, i32 2
  %581 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %585, label %586

585:                                              ; preds = %578
  store i64 0, i64* %5, align 8
  br label %677

586:                                              ; preds = %578
  %587 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %588 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %589, i32 0, i32 1
  %591 = load i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*)** %590, align 8
  %592 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %593 = bitcast %struct.ixgbe_hw* %592 to %struct.ixgbe_hw.2*
  %594 = call i32 %591(%struct.ixgbe_hw.2* %593, i32* %14)
  %595 = load i32, i32* %14, align 4
  %596 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %674, label %599

599:                                              ; preds = %586
  %600 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %601 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = sext i32 %603 to i64
  %605 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %606 = icmp eq i64 %604, %605
  br i1 %606, label %674, label %607

607:                                              ; preds = %599
  %608 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %609 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = sext i32 %611 to i64
  %613 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %674, label %615

615:                                              ; preds = %607
  %616 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %617 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = sext i32 %619 to i64
  %621 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %622 = icmp eq i64 %620, %621
  br i1 %622, label %674, label %623

623:                                              ; preds = %615
  %624 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %625 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = sext i32 %627 to i64
  %629 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %630 = icmp eq i64 %628, %629
  br i1 %630, label %674, label %631

631:                                              ; preds = %623
  %632 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %633 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = sext i32 %635 to i64
  %637 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %674, label %639

639:                                              ; preds = %631
  %640 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %641 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = sext i32 %643 to i64
  %645 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %646 = icmp eq i64 %644, %645
  br i1 %646, label %674, label %647

647:                                              ; preds = %639
  %648 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %649 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %649, i32 0, i32 1
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* @ixgbe_phy_sfp_intel, align 8
  %653 = icmp eq i64 %651, %652
  br i1 %653, label %654, label %655

654:                                              ; preds = %647
  store i64 0, i64* %5, align 8
  br label %673

655:                                              ; preds = %647
  %656 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %657 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %656, i32 0, i32 1
  %658 = load i64, i64* %657, align 8
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %660, label %663

660:                                              ; preds = %655
  %661 = load i32, i32* @drv, align 4
  %662 = call i32 @e_warn(i32 %661, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %672

663:                                              ; preds = %655
  %664 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %665 = call i32 @hw_dbg(%struct.ixgbe_hw* %664, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %666 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %667 = ptrtoint i8* %666 to i64
  %668 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %669 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %669, i32 0, i32 1
  store i64 %667, i64* %670, align 8
  %671 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %671, i64* %5, align 8
  br label %672

672:                                              ; preds = %663, %660
  br label %673

673:                                              ; preds = %672, %654
  br label %675

674:                                              ; preds = %639, %631, %623, %615, %607, %599, %586
  store i64 0, i64* %5, align 8
  br label %675

675:                                              ; preds = %674, %673
  br label %676

676:                                              ; preds = %675, %66
  br label %677

677:                                              ; preds = %676, %585, %571, %519, %34
  %678 = load i64, i64* %5, align 8
  store i64 %678, i64* %2, align 8
  br label %701

679:                                              ; preds = %429, %415, %401, %111, %98, %85, %53
  %680 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %681 = ptrtoint i8* %680 to i32
  %682 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %683 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %683, i32 0, i32 0
  store i32 %681, i32* %684, align 8
  %685 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %686 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %686, i32 0, i32 1
  %688 = load i64, i64* %687, align 8
  %689 = load i64, i64* @ixgbe_phy_nl, align 8
  %690 = icmp ne i64 %688, %689
  br i1 %690, label %691, label %699

691:                                              ; preds = %679
  %692 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %693 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %693, i32 0, i32 4
  store i64 0, i64* %694, align 8
  %695 = load i64, i64* @ixgbe_phy_unknown, align 8
  %696 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %697 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %697, i32 0, i32 1
  store i64 %695, i64* %698, align 8
  br label %699

699:                                              ; preds = %691, %679
  %700 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %700, i64* %2, align 8
  br label %701

701:                                              ; preds = %699, %677
  %702 = load i64, i64* %2, align 8
  ret i64 %702
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @e_warn(i32, i8*) #2

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
