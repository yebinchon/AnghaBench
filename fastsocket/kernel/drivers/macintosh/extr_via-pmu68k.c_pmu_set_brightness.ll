; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@backlight_level = common dso_local global i32 0, align 4
@backlight_enabled = common dso_local global i32 0, align 4
@bright_req_1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PMU_BACKLIGHT_BRIGHT = common dso_local global i32 0, align 4
@bright_req_2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PMU_POWER_CTRL = common dso_local global i32 0, align 4
@PMU_POW_BACKLIGHT = common dso_local global i32 0, align 4
@PMU_POW_ON = common dso_local global i32 0, align 4
@PMU_POW_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pmu_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_set_brightness(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @backlight_level, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @LEVEL_TO_BRIGHT(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @backlight_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bright_req_1, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @PMU_BACKLIGHT_BRIGHT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pmu_request(%struct.TYPE_4__* @bright_req_1, i32* null, i32 2, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bright_req_2, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* @PMU_POWER_CTRL, align 4
  %22 = load i32, i32* @PMU_POW_BACKLIGHT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 127
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @PMU_POW_ON, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @PMU_POW_OFF, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = or i32 %22, %30
  %32 = call i32 @pmu_request(%struct.TYPE_4__* @bright_req_2, i32* null, i32 2, i32 %21, i32 %31)
  br label %33

33:                                               ; preds = %9, %29, %17
  ret void
}

declare dso_local i32 @LEVEL_TO_BRIGHT(i32) #1

declare dso_local i32 @pmu_request(%struct.TYPE_4__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
