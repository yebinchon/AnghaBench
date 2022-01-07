; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@e1000_phy_i210 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"M88E1000 PSCR: %X\0A\00", align 1
@PHY_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on M88 phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_phy_force_speed_duplex_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %3, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_phy_i210, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %23 = call i64 %19(%struct.e1000_hw.1* %21, i32 %22, i32* %5)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %223

27:                                               ; preds = %15
  %28 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 %35(%struct.e1000_hw.0* %37, i32 %38, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %223

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.1*
  %54 = load i32, i32* @PHY_CONTROL, align 4
  %55 = call i64 %51(%struct.e1000_hw.1* %53, i32 %54, i32* %5)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %223

59:                                               ; preds = %47
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = call i32 @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %60, i32* %5)
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = load i32, i32* @PHY_CONTROL, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 %65(%struct.e1000_hw.0* %67, i32 %68, i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %223

74:                                               ; preds = %59
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %223

80:                                               ; preds = %74
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %144

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %89 = call i64 @igb_phy_has_link(%struct.e1000_hw* %87, i32 %88, i32 100000, i32* %6)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %223

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %136, label %96

96:                                               ; preds = %93
  store i32 1, i32* %7, align 4
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %102 [
    i32 129, label %101
    i32 128, label %101
    i32 130, label %101
  ]

101:                                              ; preds = %96, %96, %96
  store i32 0, i32* %7, align 4
  br label %111

102:                                              ; preds = %96
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @e1000_phy_m88, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %102
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %135

116:                                              ; preds = %111
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %119, align 8
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = bitcast %struct.e1000_hw* %121 to %struct.e1000_hw.0*
  %123 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %124 = call i64 %120(%struct.e1000_hw.0* %122, i32 %123, i32 29)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %223

128:                                              ; preds = %116
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %130 = call i64 @igb_phy_reset_dsp(%struct.e1000_hw* %129)
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %223

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135, %93
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %139 = call i64 @igb_phy_has_link(%struct.e1000_hw* %137, i32 %138, i32 100000, i32* %6)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %223

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %80
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @e1000_phy_m88, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %169, label %151

151:                                              ; preds = %144
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 129
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %159 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157, %151, %144
  br label %223

170:                                              ; preds = %163
  %171 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %173, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %176 = bitcast %struct.e1000_hw* %175 to %struct.e1000_hw.1*
  %177 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %178 = call i64 %174(%struct.e1000_hw.1* %176, i32 %177, i32* %5)
  store i64 %178, i64* %4, align 8
  %179 = load i64, i64* %4, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %223

182:                                              ; preds = %170
  %183 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %188, align 8
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %191 = bitcast %struct.e1000_hw* %190 to %struct.e1000_hw.0*
  %192 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i64 %189(%struct.e1000_hw.0* %191, i32 %192, i32 %193)
  store i64 %194, i64* %4, align 8
  %195 = load i64, i64* %4, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %182
  br label %223

198:                                              ; preds = %182
  %199 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %201, align 8
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %204 = bitcast %struct.e1000_hw* %203 to %struct.e1000_hw.1*
  %205 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %206 = call i64 %202(%struct.e1000_hw.1* %204, i32 %205, i32* %5)
  store i64 %206, i64* %4, align 8
  %207 = load i64, i64* %4, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %223

210:                                              ; preds = %198
  %211 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %212 = load i32, i32* %5, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %5, align 4
  %214 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %215 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %216, align 8
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %219 = bitcast %struct.e1000_hw* %218 to %struct.e1000_hw.0*
  %220 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %221 = load i32, i32* %5, align 4
  %222 = call i64 %217(%struct.e1000_hw.0* %219, i32 %220, i32 %221)
  store i64 %222, i64* %4, align 8
  br label %223

223:                                              ; preds = %210, %209, %197, %181, %169, %142, %133, %127, %92, %79, %73, %58, %43, %26
  %224 = load i64, i64* %4, align 8
  ret i64 %224
}

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @igb_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @igb_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i64 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @igb_phy_reset_dsp(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
