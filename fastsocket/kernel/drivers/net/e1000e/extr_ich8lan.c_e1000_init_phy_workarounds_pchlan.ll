; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_init_phy_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_init_phy_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@FWSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to initialize PHY flow\0A\00", align 1
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Required LANPHYPC toggle blocked by ME\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Toggling LANPHYPC\0A\00", align 1
@FEXTNVM3 = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_OVERRIDE = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_VALUE = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_workarounds_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @FWSM, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %9, i32 1)
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %14, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = bitcast %struct.e1000_hw* %16 to %struct.e1000_hw.2*
  %18 = call i64 %15(%struct.e1000_hw.2* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %173

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %157 [
    i32 129, label %28
    i32 130, label %43
    i32 128, label %49
  ]

28:                                               ; preds = %23
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %158

33:                                               ; preds = %28
  %34 = load i32, i32* @CTRL_EXT, align 4
  %35 = call i32 @er32(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @CTRL_EXT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  %42 = call i32 @msleep(i32 50)
  br label %43

43:                                               ; preds = %23, %33
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %158

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %23, %48
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %158

61:                                               ; preds = %55, %49
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.1*
  %69 = call i32 %66(%struct.e1000_hw.1* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = call i32 @e_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* @E1000_ERR_PHY, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %5, align 8
  br label %158

75:                                               ; preds = %61
  %76 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @FEXTNVM3, align 4
  %78 = call i32 @er32(i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @FEXTNVM3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @ew32(i32 %86, i32 %87)
  %89 = load i32, i32* @CTRL, align 4
  %90 = call i32 @er32(i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* @E1000_CTRL_LANPHYPC_VALUE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* @CTRL, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @ew32(i32 %98, i32 %99)
  %101 = call i32 (...) @e1e_flush()
  %102 = call i32 @usleep_range(i32 10, i32 20)
  %103 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @CTRL, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  %110 = call i32 (...) @e1e_flush()
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 129
  br i1 %115, label %116, label %118

116:                                              ; preds = %75
  %117 = call i32 @msleep(i32 50)
  br label %156

118:                                              ; preds = %75
  store i32 20, i32* %6, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %121

121:                                              ; preds = %119
  %122 = load i32, i32* @CTRL_EXT, align 4
  %123 = call i32 @er32(i32 %122)
  %124 = load i32, i32* @E1000_CTRL_EXT_LPCD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %6, align 4
  %130 = icmp ne i32 %128, 0
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi i1 [ false, %121 ], [ %130, %127 ]
  br i1 %132, label %119, label %133

133:                                              ; preds = %131
  %134 = call i32 @usleep_range(i32 30000, i32 60000)
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %136 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %158

139:                                              ; preds = %133
  %140 = load i32, i32* @CTRL_EXT, align 4
  %141 = call i32 @er32(i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %3, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* @CTRL_EXT, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @ew32(i32 %146, i32 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %150 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  br label %158

153:                                              ; preds = %139
  %154 = load i64, i64* @E1000_ERR_PHY, align 8
  %155 = sub nsw i64 0, %154
  store i64 %155, i64* %5, align 8
  br label %156

156:                                              ; preds = %153, %116
  br label %158

157:                                              ; preds = %23
  br label %158

158:                                              ; preds = %157, %156, %152, %138, %71, %60, %47, %32
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.0*
  %166 = call i32 %163(%struct.e1000_hw.0* %165)
  %167 = load i64, i64* %5, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %158
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %171 = call i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %170)
  store i64 %171, i64* %5, align 8
  br label %172

172:                                              ; preds = %169, %158
  br label %173

173:                                              ; preds = %172, %21
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 130
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = call i32 @usleep_range(i32 10000, i32 20000)
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %187 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %186, i32 0)
  br label %188

188:                                              ; preds = %184, %179, %173
  %189 = load i64, i64* %5, align 8
  ret i64 %189
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
