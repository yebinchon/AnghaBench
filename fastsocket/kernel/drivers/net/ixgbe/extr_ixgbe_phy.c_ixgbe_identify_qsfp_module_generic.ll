; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_identify_qsfp_module_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__, %struct.ixgbe_adapter* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_adapter = type { i32 }

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_media_type_fiber_qsfp = common dso_local global i64 0, align 8
@ixgbe_sfp_type_not_present = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_SFF_IDENTIFIER = common dso_local global i32 0, align 4
@IXGBE_SFF_IDENTIFIER_QSFP_PLUS = common dso_local global i64 0, align 8
@ixgbe_phy_sfp_unsupported = common dso_local global i8* null, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_10GBE_COMP = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_PASSIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_passive_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_cu_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_DA_ACTIVE_CABLE = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_active_unknown = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i32 0, align 4
@ixgbe_sfp_type_srlr_core1 = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASESX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_1GBASELX_CAPABLE = common dso_local global i64 0, align 8
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1 = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2 = common dso_local global i32 0, align 4
@IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT = common dso_local global i64 0, align 8
@IXGBE_SFF_VENDOR_OUI_INTEL = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_intel = common dso_local global i64 0, align 8
@ixgbe_phy_qsfp_unknown = common dso_local global i64 0, align 8
@IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [289 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"QSFP module not supported\0A\00", align 1
@ixgbe_phy_unknown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_identify_qsfp_module_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %4, align 8
  %16 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %21 = bitcast [3 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.1*
  %29 = call i64 %26(%struct.ixgbe_hw.1* %28)
  %30 = load i64, i64* @ixgbe_media_type_fiber_qsfp, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %38, i64* %5, align 8
  br label %331

39:                                               ; preds = %1
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i32, i32* @IXGBE_SFF_IDENTIFIER, align 4
  %48 = call i64 %44(%struct.ixgbe_hw.0* %46, i32 %47, i64* %8)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %333

52:                                               ; preds = %39
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @IXGBE_SFF_IDENTIFIER_QSFP_PLUS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %62, i64* %5, align 8
  br label %331

63:                                               ; preds = %52
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store i64 %64, i64* %67, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.3*
  %75 = call i32 %72(%struct.ixgbe_hw.3* %74)
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = load i32, i32* @IXGBE_SFF_QSFP_10GBE_COMP, align 4
  %84 = call i64 %80(%struct.ixgbe_hw.0* %82, i32 %83, i64* %10)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %63
  br label %333

88:                                               ; preds = %63
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @IXGBE_SFF_QSFP_DA_PASSIVE_CABLE, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load i64, i64* @ixgbe_phy_qsfp_passive_unknown, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i64 %94, i64* %97, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load i32, i32* @ixgbe_sfp_type_da_cu_core0, align 4
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %113

108:                                              ; preds = %93
  %109 = load i32, i32* @ixgbe_sfp_type_da_cu_core1, align 4
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  br label %173

114:                                              ; preds = %88
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @IXGBE_SFF_QSFP_DA_ACTIVE_CABLE, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load i64, i64* @ixgbe_phy_qsfp_active_unknown, align 8
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i64 %120, i64* %123, align 8
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core0, align 4
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %139

134:                                              ; preds = %119
  %135 = load i32, i32* @ixgbe_sfp_type_da_act_lmt_core1, align 4
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %134, %129
  br label %172

140:                                              ; preds = %114
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %143 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %144 = or i64 %142, %143
  %145 = and i64 %141, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %140
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i32, i32* @ixgbe_sfp_type_srlr_core0, align 4
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  br label %163

158:                                              ; preds = %147
  %159 = load i32, i32* @ixgbe_sfp_type_srlr_core1, align 4
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %161 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %158, %153
  br label %171

164:                                              ; preds = %140
  %165 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %170, i64* %5, align 8
  br label %331

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %113
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %180, %173
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %186 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i32 0, i32* %187, align 4
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* @IXGBE_SFF_1GBASESX_CAPABLE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %184
  %193 = load i64, i64* %10, align 8
  %194 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192, %184
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* @IXGBE_SFF_1GBASELX_CAPABLE, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202, %192
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %209 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  store i32 1, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %202, %197
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* @IXGBE_SFF_10GBASESR_CAPABLE, align 8
  %214 = load i64, i64* @IXGBE_SFF_10GBASELR_CAPABLE, align 8
  %215 = or i64 %213, %214
  %216 = and i64 %212, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %330

218:                                              ; preds = %211
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %222, align 8
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %225 = bitcast %struct.ixgbe_hw* %224 to %struct.ixgbe_hw.0*
  %226 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE0, align 4
  %227 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %228 = call i64 %223(%struct.ixgbe_hw.0* %225, i32 %226, i64* %227)
  store i64 %228, i64* %5, align 8
  %229 = load i64, i64* %5, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %218
  br label %333

232:                                              ; preds = %218
  %233 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %234 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %236, align 8
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %239 = bitcast %struct.ixgbe_hw* %238 to %struct.ixgbe_hw.0*
  %240 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE1, align 4
  %241 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %242 = call i64 %237(%struct.ixgbe_hw.0* %239, i32 %240, i64* %241)
  store i64 %242, i64* %5, align 8
  %243 = load i64, i64* %5, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %232
  br label %333

246:                                              ; preds = %232
  %247 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %248 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i64 (%struct.ixgbe_hw.0*, i32, i64*)*, i64 (%struct.ixgbe_hw.0*, i32, i64*)** %250, align 8
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %253 = bitcast %struct.ixgbe_hw* %252 to %struct.ixgbe_hw.0*
  %254 = load i32, i32* @IXGBE_SFF_QSFP_VENDOR_OUI_BYTE2, align 4
  %255 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %256 = call i64 %251(%struct.ixgbe_hw.0* %253, i32 %254, i64* %255)
  store i64 %256, i64* %5, align 8
  %257 = load i64, i64* %5, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  br label %333

260:                                              ; preds = %246
  %261 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %262 = load i64, i64* %261, align 16
  %263 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT, align 8
  %264 = shl i64 %262, %263
  %265 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT, align 8
  %268 = shl i64 %266, %267
  %269 = or i64 %264, %268
  %270 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %271 = load i64, i64* %270, align 16
  %272 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT, align 8
  %273 = shl i64 %271, %272
  %274 = or i64 %269, %273
  store i64 %274, i64* %6, align 8
  %275 = load i64, i64* %6, align 8
  %276 = load i64, i64* @IXGBE_SFF_VENDOR_OUI_INTEL, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %260
  %279 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %280 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %281 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  store i64 %279, i64* %282, align 8
  br label %288

283:                                              ; preds = %260
  %284 = load i64, i64* @ixgbe_phy_qsfp_unknown, align 8
  %285 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %286 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  store i64 %284, i64* %287, align 8
  br label %288

288:                                              ; preds = %283, %278
  %289 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %290 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*)** %292, align 8
  %294 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %295 = bitcast %struct.ixgbe_hw* %294 to %struct.ixgbe_hw.2*
  %296 = call i32 %293(%struct.ixgbe_hw.2* %295, i32* %12)
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* @IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %328, label %301

301:                                              ; preds = %288
  %302 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %303 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @ixgbe_phy_qsfp_intel, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  store i64 0, i64* %5, align 8
  br label %327

309:                                              ; preds = %301
  %310 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %311 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %316 = call i32 @e_warn(%struct.ixgbe_hw* %315, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %326

317:                                              ; preds = %309
  %318 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %319 = call i32 @hw_dbg(%struct.ixgbe_hw* %318, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %320 = load i8*, i8** @ixgbe_phy_sfp_unsupported, align 8
  %321 = ptrtoint i8* %320 to i64
  %322 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %323 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  store i64 %321, i64* %324, align 8
  %325 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  store i64 %325, i64* %5, align 8
  br label %326

326:                                              ; preds = %317, %314
  br label %327

327:                                              ; preds = %326, %308
  br label %329

328:                                              ; preds = %288
  store i64 0, i64* %5, align 8
  br label %329

329:                                              ; preds = %328, %327
  br label %330

330:                                              ; preds = %329, %211
  br label %331

331:                                              ; preds = %330, %164, %56, %32
  %332 = load i64, i64* %5, align 8
  store i64 %332, i64* %2, align 8
  br label %347

333:                                              ; preds = %259, %245, %231, %87, %51
  %334 = load i8*, i8** @ixgbe_sfp_type_not_present, align 8
  %335 = ptrtoint i8* %334 to i32
  %336 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %337 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  store i32 %335, i32* %338, align 8
  %339 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %340 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 4
  store i64 0, i64* %341, align 8
  %342 = load i64, i64* @ixgbe_phy_unknown, align 8
  %343 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %344 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  store i64 %342, i64* %345, align 8
  %346 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  store i64 %346, i64* %2, align 8
  br label %347

347:                                              ; preds = %333, %331
  %348 = load i64, i64* %2, align 8
  ret i64 %348
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @e_warn(%struct.ixgbe_hw*, i8*) #2

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
