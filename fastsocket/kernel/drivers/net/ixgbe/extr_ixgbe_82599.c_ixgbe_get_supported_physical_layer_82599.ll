; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_get_supported_physical_layer_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_get_supported_physical_layer_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_PHYSICAL_LAYER_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBT = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BT = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_100BTX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_KX_BX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_BX = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_KX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_AUTOC_10G_XAUI = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_XAUI = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_KR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KR = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBE_COMP_CODES = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASESR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IXGBE_SFF_10GBASELR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4
@IXGBE_SFF_1GBASET_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_SFF_QSFP_10GBE_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_supported_physical_layer_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_supported_physical_layer_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_PHYSICAL_LAYER_UNKNOWN, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_AUTOC, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = load i32, i32* @IXGBE_AUTOC2, align 4
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IXGBE_AUTOC_10G_PMA_PMD_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.3*
  %35 = call i32 %32(%struct.ixgbe_hw.3* %34)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %78 [
    i32 128, label %40
    i32 141, label %40
  ]

40:                                               ; preds = %1, %1
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.2*
  %48 = load i32, i32* @MDIO_PMA_EXTABLE, align 4
  %49 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %50 = call i32 %45(%struct.ixgbe_hw.2* %47, i32 %48, i32 %49, i32* %9)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MDIO_PMA_EXTABLE_10GBT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %40
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MDIO_PMA_EXTABLE_1000BT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MDIO_PMA_EXTABLE_100BTX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %250

78:                                               ; preds = %1
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %154 [
    i32 145, label %83
    i32 144, label %83
    i32 147, label %92
    i32 146, label %113
    i32 143, label %126
    i32 142, label %126
  ]

83:                                               ; preds = %79, %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @IXGBE_AUTOC_1G_KX_BX, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %89 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_BX, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %3, align 4
  br label %250

91:                                               ; preds = %83
  br label %156

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @IXGBE_AUTOC_10G_CX4, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  store i32 %97, i32* %3, align 4
  br label %112

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @IXGBE_AUTOC_10G_KX4, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  store i32 %103, i32* %3, align 4
  br label %111

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @IXGBE_AUTOC_10G_XAUI, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_XAUI, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %110, %102
  br label %112

112:                                              ; preds = %111, %96
  br label %250

113:                                              ; preds = %79
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IXGBE_AUTOC2_10G_KR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  store i32 %118, i32* %3, align 4
  br label %250

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %156

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124
  br label %155

126:                                              ; preds = %79, %79
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %133 = load i32, i32* %3, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %144
  br label %250

154:                                              ; preds = %79
  br label %250

155:                                              ; preds = %125
  br label %156

156:                                              ; preds = %155, %123, %91
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %160, align 8
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = bitcast %struct.ixgbe_hw* %162 to %struct.ixgbe_hw.1*
  %164 = call i32 %161(%struct.ixgbe_hw.1* %163)
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %166 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %250

172:                                              ; preds = %156
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %248 [
    i32 131, label %177
    i32 130, label %177
    i32 138, label %177
    i32 133, label %179
    i32 136, label %179
    i32 140, label %179
    i32 135, label %181
    i32 134, label %181
    i32 132, label %181
    i32 129, label %181
    i32 139, label %223
    i32 137, label %223
  ]

177:                                              ; preds = %172, %172, %172
  %178 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  store i32 %178, i32* %3, align 4
  br label %249

179:                                              ; preds = %172, %172, %172
  %180 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA, align 4
  store i32 %180, i32* %3, align 4
  br label %249

181:                                              ; preds = %172, %172, %172, %172
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %183 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %185, align 8
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %188 = bitcast %struct.ixgbe_hw* %187 to %struct.ixgbe_hw.0*
  %189 = load i32, i32* @IXGBE_SFF_1GBE_COMP_CODES, align 4
  %190 = call i32 %186(%struct.ixgbe_hw.0* %188, i32 %189, i32* %11)
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %192 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %194, align 8
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %197 = bitcast %struct.ixgbe_hw* %196 to %struct.ixgbe_hw.0*
  %198 = load i32, i32* @IXGBE_SFF_10GBE_COMP_CODES, align 4
  %199 = call i32 %195(%struct.ixgbe_hw.0* %197, i32 %198, i32* %10)
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @IXGBE_SFF_10GBASESR_CAPABLE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %181
  %205 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %205, i32* %3, align 4
  br label %222

206:                                              ; preds = %181
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @IXGBE_SFF_10GBASELR_CAPABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %212, i32* %3, align 4
  br label %221

213:                                              ; preds = %206
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @IXGBE_SFF_1GBASET_CAPABLE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %213
  br label %221

221:                                              ; preds = %220, %211
  br label %222

222:                                              ; preds = %221, %204
  br label %249

223:                                              ; preds = %172, %172
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %225 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %227, align 8
  %229 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %230 = bitcast %struct.ixgbe_hw* %229 to %struct.ixgbe_hw.0*
  %231 = load i32, i32* @IXGBE_SFF_QSFP_10GBE_COMP, align 4
  %232 = call i32 %228(%struct.ixgbe_hw.0* %230, i32 %231, i32* %10)
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @IXGBE_SFF_10GBASESR_CAPABLE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %223
  %238 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  store i32 %238, i32* %3, align 4
  br label %247

239:                                              ; preds = %223
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @IXGBE_SFF_10GBASELR_CAPABLE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %239
  br label %247

247:                                              ; preds = %246, %237
  br label %249

248:                                              ; preds = %172
  br label %249

249:                                              ; preds = %248, %247, %222, %179, %177
  br label %250

250:                                              ; preds = %249, %171, %154, %153, %117, %112, %87, %77
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
