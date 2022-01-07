; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_suspend_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_suspend_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i64, i32 }

@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@FEXTNVM6 = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@I217_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i64 0, align 8
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_PROXY_CTRL_AUTO_DISABLE = common dso_local global i64 0, align 8
@I217_SxCTRL = common dso_local global i32 0, align 4
@I217_SxCTRL_ENABLE_LPI_RESET = common dso_local global i64 0, align 8
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i64 0, align 8
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@e1000_pchlan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_suspend_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %12, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %13 = load i32, i32* @PHY_CTRL, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_phy_i217, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %166

24:                                               ; preds = %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %39, %35, %24
  %48 = load i32, i32* @FEXTNVM6, align 4
  %49 = call i32 @er32(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @FEXTNVM6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @ew32(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %47, %43
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.1*
  %64 = call i64 %61(%struct.e1000_hw.1* %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %167

68:                                               ; preds = %56
  %69 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %68
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = load i32, i32* @I217_EEE_ADVERTISEMENT, align 4
  %76 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %74, i32 %75, i64* %9)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %157

80:                                               ; preds = %73
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %102 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %100, %92, %85, %80
  br label %108

108:                                              ; preds = %107, %68
  %109 = load i32, i32* @FWSM, align 4
  %110 = call i32 @er32(i32 %109)
  %111 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %146, label %114

114:                                              ; preds = %108
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %116 = load i32, i32* @I217_PROXY_CTRL, align 4
  %117 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %115, i32 %116, i64* %6)
  %118 = load i64, i64* @I217_PROXY_CTRL_AUTO_DISABLE, align 8
  %119 = load i64, i64* %6, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %6, align 8
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = load i32, i32* @I217_PROXY_CTRL, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %121, i32 %122, i64 %123)
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %126 = load i32, i32* @I217_SxCTRL, align 4
  %127 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %125, i32 %126, i64* %6)
  %128 = load i64, i64* @I217_SxCTRL_ENABLE_LPI_RESET, align 8
  %129 = load i64, i64* %6, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %6, align 8
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %132 = load i32, i32* @I217_SxCTRL, align 4
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %131, i32 %132, i64 %133)
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %136 = load i32, i32* @I217_MEMPWR, align 4
  %137 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %135, i32 %136, i64* %6)
  %138 = load i64, i64* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 8
  %139 = xor i64 %138, -1
  %140 = load i64, i64* %6, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %6, align 8
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %143 = load i32, i32* @I217_MEMPWR, align 4
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %142, i32 %143, i64 %144)
  br label %146

146:                                              ; preds = %114, %108
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %148 = load i32, i32* @I217_CGFREG, align 4
  %149 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %147, i32 %148, i64* %6)
  %150 = load i64, i64* @I217_CGFREG_ENABLE_MTA_RESET, align 8
  %151 = load i64, i64* %6, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %6, align 8
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %154 = load i32, i32* @I217_CGFREG, align 4
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %153, i32 %154, i64 %155)
  br label %157

157:                                              ; preds = %146, %79
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %159 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %161, align 8
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %164 = bitcast %struct.e1000_hw* %163 to %struct.e1000_hw.0*
  %165 = call i32 %162(%struct.e1000_hw.0* %164)
  br label %166

166:                                              ; preds = %157, %1
  br label %167

167:                                              ; preds = %166, %67
  %168 = load i32, i32* @PHY_CTRL, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @ew32(i32 %168, i32 %169)
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %172 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @e1000_ich8lan, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %179 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %178)
  br label %180

180:                                              ; preds = %177, %167
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %182 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @e1000_pchlan, align 8
  %186 = icmp sge i64 %184, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %180
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %189 = call i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %188, i32 0)
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @e1000_pchlan, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %187
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %198 = call i32 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %197)
  br label %199

199:                                              ; preds = %196, %187
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %201 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %203, align 8
  %205 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %206 = bitcast %struct.e1000_hw* %205 to %struct.e1000_hw.1*
  %207 = call i64 %204(%struct.e1000_hw.1* %206)
  store i64 %207, i64* %5, align 8
  %208 = load i64, i64* %5, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %222

211:                                              ; preds = %199
  %212 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %213 = call i32 @e1000_write_smbus_addr(%struct.e1000_hw* %212)
  %214 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %215 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %217, align 8
  %219 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %220 = bitcast %struct.e1000_hw* %219 to %struct.e1000_hw.0*
  %221 = call i32 %218(%struct.e1000_hw.0* %220)
  br label %222

222:                                              ; preds = %210, %211, %180
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1e_rphy_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000e_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_write_smbus_addr(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
