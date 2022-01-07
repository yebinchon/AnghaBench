; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_threshold_hyst_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_threshold_hyst_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*)* }
%struct.nvbios_therm_threshold = type { i32, i32 }

@NOUVEAU_THERM_THRS_LOWER = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_HIGHER = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*, %struct.nvbios_therm_threshold*, i32)* @nouveau_therm_threshold_hyst_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_therm_threshold_hyst_polling(%struct.nouveau_therm* %0, %struct.nvbios_therm_threshold* %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca %struct.nvbios_therm_threshold*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store %struct.nvbios_therm_threshold* %1, %struct.nvbios_therm_threshold** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %11, i32 0, i32 0
  %13 = load i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*)** %12, align 8
  %14 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %15 = call i32 %13(%struct.nouveau_therm* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nouveau_therm_sensor_get_threshold_state(%struct.nouveau_therm* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %21 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NOUVEAU_THERM_THRS_LOWER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @NOUVEAU_THERM_THRS_RISING, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @NOUVEAU_THERM_THRS_HIGHER, align 4
  store i32 %30, i32* %9, align 4
  br label %50

31:                                               ; preds = %24, %3
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %34 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %5, align 8
  %37 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = icmp sle i32 %32, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NOUVEAU_THERM_THRS_HIGHER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @NOUVEAU_THERM_THRS_FALLING, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @NOUVEAU_THERM_THRS_LOWER, align 4
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %41, %31
  br label %59

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @nouveau_therm_sensor_set_threshold_state(%struct.nouveau_therm* %51, i32 %52, i32 %53)
  %55 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nouveau_therm_sensor_event(%struct.nouveau_therm* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %48
  ret void
}

declare dso_local i32 @nouveau_therm_sensor_get_threshold_state(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nouveau_therm_sensor_set_threshold_state(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @nouveau_therm_sensor_event(%struct.nouveau_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
