; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_nvc0_pm_clocks_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_nvc0_pm_clocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvc0_pm_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_pm_clocks_set(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvc0_pm_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nvc0_pm_state*
  store %struct.nvc0_pm_state* %8, %struct.nvc0_pm_state** %5, align 8
  %9 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %5, align 8
  %10 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %5, align 8
  %17 = call i32 @prog_mem(%struct.drm_device* %15, %struct.nvc0_pm_state* %16)
  br label %18

18:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %5, align 8
  %24 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %43

33:                                               ; preds = %22
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %5, align 8
  %37 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = call i32 @prog_clk(%struct.drm_device* %34, i32 %35, %struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %33, %32
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %5, align 8
  %48 = call i32 @kfree(%struct.nvc0_pm_state* %47)
  ret i32 0
}

declare dso_local i32 @prog_mem(%struct.drm_device*, %struct.nvc0_pm_state*) #1

declare dso_local i32 @prog_clk(%struct.drm_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.nvc0_pm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
