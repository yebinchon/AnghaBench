; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_reg = type { i32, i32, i32, i32, i32 }
%struct.intel_uncore_box = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.intel_uncore_type* }
%struct.intel_uncore_type = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@nhmex_uncore_mbox_extra_regs = common dso_local global %struct.extra_reg* null, align 8
@EXTRA_REG_NHMEX_M_PLD = common dso_local global i32 0, align 4
@EXTRA_REG_NHMEX_M_FILTER = common dso_local global i32 0, align 4
@NHMEX_M_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_M0_MSR_PMU_MM_CFG = common dso_local global i32 0, align 4
@NHMEX_M1_MSR_PMU_MM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.intel_uncore_type*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca %struct.extra_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %12 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %13 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %15, align 8
  store %struct.intel_uncore_type* %16, %struct.intel_uncore_type** %6, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store %struct.hw_perf_event_extra* %19, %struct.hw_perf_event_extra** %7, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.hw_perf_event_extra* %22, %struct.hw_perf_event_extra** %8, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %216

33:                                               ; preds = %2
  %34 = load %struct.extra_reg*, %struct.extra_reg** @nhmex_uncore_mbox_extra_regs, align 8
  store %struct.extra_reg* %34, %struct.extra_reg** %9, align 8
  br label %35

35:                                               ; preds = %175, %33
  %36 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %37 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %178

40:                                               ; preds = %35
  %41 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %42 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %49 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %43, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %175

54:                                               ; preds = %40
  %55 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %60 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %216

68:                                               ; preds = %54
  %69 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %70 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @__BITS_VALUE(i32 %74, i32 0, i32 8)
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %79 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @__BITS_VALUE(i32 %83, i32 1, i32 8)
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77, %68
  br label %175

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %88, 2
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON_ONCE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %216

96:                                               ; preds = %87
  %97 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %98 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %6, align 8
  %101 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %104 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul i32 %102, %107
  %109 = add i32 %99, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp uge i32 %110, 65535
  br i1 %111, label %117, label %112

112:                                              ; preds = %96
  %113 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %114 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 255
  br label %117

117:                                              ; preds = %112, %96
  %118 = phi i1 [ true, %96 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i64 @WARN_ON_ONCE(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %216

125:                                              ; preds = %117
  %126 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %127 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @EXTRA_REG_NHMEX_M_PLD, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 1, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %125
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %133, 8
  %135 = shl i32 255, %134
  %136 = xor i32 %135, -1
  %137 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %138 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %141, 16
  %143 = shl i32 65535, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %146 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %150 = call i32 @nhmex_mbox_extra_reg_idx(%struct.extra_reg* %149)
  %151 = load i32, i32* %11, align 4
  %152 = mul nsw i32 %151, 8
  %153 = shl i32 %150, %152
  %154 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %155 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 %159, 16
  %161 = shl i32 %158, %160
  %162 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %163 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %167 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %172 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %132, %86, %53
  %176 = load %struct.extra_reg*, %struct.extra_reg** %9, align 8
  %177 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %176, i32 1
  store %struct.extra_reg* %177, %struct.extra_reg** %9, align 8
  br label %35

178:                                              ; preds = %35
  %179 = load i32, i32* @EXTRA_REG_NHMEX_M_FILTER, align 4
  %180 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %181 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %183 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @NHMEX_M_PMON_MM_CFG_EN, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %178
  %190 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %191 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %196 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  br label %200

197:                                              ; preds = %178
  %198 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %199 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %198, i32 0, i32 2
  store i64 -1, i64* %199, align 8
  br label %200

200:                                              ; preds = %197, %189
  %201 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %202 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32, i32* @NHMEX_M0_MSR_PMU_MM_CFG, align 4
  %209 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %210 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  br label %215

211:                                              ; preds = %200
  %212 = load i32, i32* @NHMEX_M1_MSR_PMU_MM_CFG, align 4
  %213 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %214 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %207
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %122, %93, %65, %30
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @nhmex_mbox_extra_reg_idx(%struct.extra_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
