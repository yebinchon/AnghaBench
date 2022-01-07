; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_pvid_to_extvid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_pvid_to_extvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v_table = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@pvid_to_extvid.v_table = internal constant [128 x %struct.v_table] [%struct.v_table zeroinitializer, %struct.v_table { i32 375, i32 0 }, %struct.v_table { i32 500, i32 0 }, %struct.v_table { i32 625, i32 0 }, %struct.v_table { i32 750, i32 0 }, %struct.v_table { i32 875, i32 0 }, %struct.v_table { i32 1000, i32 0 }, %struct.v_table { i32 1125, i32 0 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4125, i32 3000 }, %struct.v_table { i32 4250, i32 3125 }, %struct.v_table { i32 4375, i32 3250 }, %struct.v_table { i32 4500, i32 3375 }, %struct.v_table { i32 4625, i32 3500 }, %struct.v_table { i32 4750, i32 3625 }, %struct.v_table { i32 4875, i32 3750 }, %struct.v_table { i32 5000, i32 3875 }, %struct.v_table { i32 5125, i32 4000 }, %struct.v_table { i32 5250, i32 4125 }, %struct.v_table { i32 5375, i32 4250 }, %struct.v_table { i32 5500, i32 4375 }, %struct.v_table { i32 5625, i32 4500 }, %struct.v_table { i32 5750, i32 4625 }, %struct.v_table { i32 5875, i32 4750 }, %struct.v_table { i32 6000, i32 4875 }, %struct.v_table { i32 6125, i32 5000 }, %struct.v_table { i32 6250, i32 5125 }, %struct.v_table { i32 6375, i32 5250 }, %struct.v_table { i32 6500, i32 5375 }, %struct.v_table { i32 6625, i32 5500 }, %struct.v_table { i32 6750, i32 5625 }, %struct.v_table { i32 6875, i32 5750 }, %struct.v_table { i32 7000, i32 5875 }, %struct.v_table { i32 7125, i32 6000 }, %struct.v_table { i32 7250, i32 6125 }, %struct.v_table { i32 7375, i32 6250 }, %struct.v_table { i32 7500, i32 6375 }, %struct.v_table { i32 7625, i32 6500 }, %struct.v_table { i32 7750, i32 6625 }, %struct.v_table { i32 7875, i32 6750 }, %struct.v_table { i32 8000, i32 6875 }, %struct.v_table { i32 8125, i32 7000 }, %struct.v_table { i32 8250, i32 7125 }, %struct.v_table { i32 8375, i32 7250 }, %struct.v_table { i32 8500, i32 7375 }, %struct.v_table { i32 8625, i32 7500 }, %struct.v_table { i32 8750, i32 7625 }, %struct.v_table { i32 8875, i32 7750 }, %struct.v_table { i32 9000, i32 7875 }, %struct.v_table { i32 9125, i32 8000 }, %struct.v_table { i32 9250, i32 8125 }, %struct.v_table { i32 9375, i32 8250 }, %struct.v_table { i32 9500, i32 8375 }, %struct.v_table { i32 9625, i32 8500 }, %struct.v_table { i32 9750, i32 8625 }, %struct.v_table { i32 9875, i32 8750 }, %struct.v_table { i32 10000, i32 8875 }, %struct.v_table { i32 10125, i32 9000 }, %struct.v_table { i32 10250, i32 9125 }, %struct.v_table { i32 10375, i32 9250 }, %struct.v_table { i32 10500, i32 9375 }, %struct.v_table { i32 10625, i32 9500 }, %struct.v_table { i32 10750, i32 9625 }, %struct.v_table { i32 10875, i32 9750 }, %struct.v_table { i32 11000, i32 9875 }, %struct.v_table { i32 11125, i32 10000 }, %struct.v_table { i32 11250, i32 10125 }, %struct.v_table { i32 11375, i32 10250 }, %struct.v_table { i32 11500, i32 10375 }, %struct.v_table { i32 11625, i32 10500 }, %struct.v_table { i32 11750, i32 10625 }, %struct.v_table { i32 11875, i32 10750 }, %struct.v_table { i32 12000, i32 10875 }, %struct.v_table { i32 12125, i32 11000 }, %struct.v_table { i32 12250, i32 11125 }, %struct.v_table { i32 12375, i32 11250 }, %struct.v_table { i32 12500, i32 11375 }, %struct.v_table { i32 12625, i32 11500 }, %struct.v_table { i32 12750, i32 11625 }, %struct.v_table { i32 12875, i32 11750 }, %struct.v_table { i32 13000, i32 11875 }, %struct.v_table { i32 13125, i32 12000 }, %struct.v_table { i32 13250, i32 12125 }, %struct.v_table { i32 13375, i32 12250 }, %struct.v_table { i32 13500, i32 12375 }, %struct.v_table { i32 13625, i32 12500 }, %struct.v_table { i32 13750, i32 12625 }, %struct.v_table { i32 13875, i32 12750 }, %struct.v_table { i32 14000, i32 12875 }, %struct.v_table { i32 14125, i32 13000 }, %struct.v_table { i32 14250, i32 13125 }, %struct.v_table { i32 14375, i32 13250 }, %struct.v_table { i32 14500, i32 13375 }, %struct.v_table { i32 14625, i32 13500 }, %struct.v_table { i32 14750, i32 13625 }, %struct.v_table { i32 14875, i32 13750 }, %struct.v_table { i32 15000, i32 13875 }, %struct.v_table { i32 15125, i32 14000 }, %struct.v_table { i32 15250, i32 14125 }, %struct.v_table { i32 15375, i32 14250 }, %struct.v_table { i32 15500, i32 14375 }, %struct.v_table { i32 15625, i32 14500 }, %struct.v_table { i32 15750, i32 14625 }, %struct.v_table { i32 15875, i32 14750 }, %struct.v_table { i32 16000, i32 14875 }, %struct.v_table { i32 16125, i32 15000 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64)* @pvid_to_extvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvid_to_extvid(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds [128 x %struct.v_table], [128 x %struct.v_table]* @pvid_to_extvid.v_table, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.v_table, %struct.v_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds [128 x %struct.v_table], [128 x %struct.v_table]* @pvid_to_extvid.v_table, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.v_table, %struct.v_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
