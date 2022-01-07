; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_reset_hw_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_reset_hw_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@PBA = common dso_local global i32 0, align 4
@E1000_PBA_8K = common dso_local global i32 0, align 4
@PBS = common dso_local global i32 0, align 4
@E1000_PBS_16K = common dso_local global i32 0, align 4
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_NVM_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_NVM_K1_ENABLE = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@e1000_pch2lan = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Issuing a global reset to ich8lan\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@FEXTNVM3 = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC = common dso_local global i32 0, align 4
@__E1000_ACCESS_SHARED_RESOURCE = common dso_local global i32 0, align 4
@CRC_OFFSET = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@KABGTXD = common dso_local global i32 0, align 4
@E1000_KABGTXD_BGSQLBIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %11, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = call i64 @e1000e_disable_pcie_master(%struct.e1000_hw* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @IMC, align 4
  %21 = call i32 @ew32(i32 %20, i32 -1)
  %22 = load i32, i32* @RCTL, align 4
  %23 = call i32 @ew32(i32 %22, i32 0)
  %24 = load i32, i32* @TCTL, align 4
  %25 = load i32, i32* @E1000_TCTL_PSP, align 4
  %26 = call i32 @ew32(i32 %24, i32 %25)
  %27 = call i32 (...) @e1e_flush()
  %28 = call i32 @usleep_range(i32 10000, i32 20000)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_ich8lan, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* @PBA, align 4
  %37 = load i32, i32* @E1000_PBA_8K, align 4
  %38 = call i32 @ew32(i32 %36, i32 %37)
  %39 = load i32, i32* @PBS, align 4
  %40 = load i32, i32* @E1000_PBS_16K, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %18
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_pchlan, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = load i32, i32* @E1000_NVM_K1_CONFIG, align 4
  %52 = call i64 @e1000_read_nvm(%struct.e1000_hw* %50, i32 %51, i32 1, i32* %5)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %2, align 8
  br label %189

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @E1000_NVM_K1_ENABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %42
  %70 = load i32, i32* @CTRL, align 4
  %71 = call i32 @er32(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %75, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = bitcast %struct.e1000_hw* %77 to %struct.e1000_hw.1*
  %79 = call i32 %76(%struct.e1000_hw.1* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @e1000_pch2lan, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %81
  %92 = load i32, i32* @FWSM, align 4
  %93 = call i32 @er32(i32 %92)
  %94 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %98, i32 1)
  br label %100

100:                                              ; preds = %97, %91, %81
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %102)
  store i64 %103, i64* %8, align 8
  %104 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @CTRL, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @E1000_CTRL_RST, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @ew32(i32 %105, i32 %108)
  %110 = call i32 @msleep(i32 20)
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @e1000_pch2lan, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %101
  %118 = load i32, i32* @FEXTNVM3, align 4
  %119 = call i32 @er32(i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* @FEXTNVM3, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @ew32(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %117, %101
  %131 = load i64, i64* %8, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @__E1000_ACCESS_SHARED_RESOURCE, align 4
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = call i32 @clear_bit(i32 %134, i32* %138)
  br label %140

140:                                              ; preds = %133, %130
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %149, align 8
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = bitcast %struct.e1000_hw* %151 to %struct.e1000_hw.0*
  %153 = call i64 %150(%struct.e1000_hw.0* %152)
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %2, align 8
  br label %189

158:                                              ; preds = %145
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = call i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw* %159)
  store i64 %160, i64* %8, align 8
  %161 = load i64, i64* %8, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i64, i64* %8, align 8
  store i64 %164, i64* %2, align 8
  br label %189

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %140
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @e1000_pchlan, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32, i32* @CRC_OFFSET, align 4
  %175 = call i32 @ew32(i32 %174, i32 1701143909)
  br label %176

176:                                              ; preds = %173, %166
  %177 = load i32, i32* @IMC, align 4
  %178 = call i32 @ew32(i32 %177, i32 -1)
  %179 = load i32, i32* @ICR, align 4
  %180 = call i32 @er32(i32 %179)
  %181 = load i32, i32* @KABGTXD, align 4
  %182 = call i32 @er32(i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* @E1000_KABGTXD_BGSQLBIAS, align 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* @KABGTXD, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @ew32(i32 %186, i32 %187)
  store i64 0, i64* %2, align 8
  br label %189

189:                                              ; preds = %176, %163, %156, %55
  %190 = load i64, i64* %2, align 8
  ret i64 %190
}

declare dso_local i64 @e1000e_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
