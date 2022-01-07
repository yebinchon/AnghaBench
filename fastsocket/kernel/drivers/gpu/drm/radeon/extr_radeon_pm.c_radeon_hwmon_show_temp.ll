; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_hwmon_show_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_hwmon_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @radeon_hwmon_show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_hwmon_show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @to_pci_dev(%struct.device* %10)
  %12 = call %struct.drm_device* @pci_get_drvdata(i32 %11)
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 131, label %20
    i32 130, label %23
    i32 133, label %26
    i32 132, label %26
    i32 128, label %29
    i32 129, label %32
  ]

20:                                               ; preds = %3
  %21 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %22 = call i32 @rv6xx_get_temp(%struct.radeon_device* %21)
  store i32 %22, i32* %9, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %25 = call i32 @rv770_get_temp(%struct.radeon_device* %24)
  store i32 %25, i32* %9, align 4
  br label %36

26:                                               ; preds = %3, %3
  %27 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %28 = call i32 @evergreen_get_temp(%struct.radeon_device* %27)
  store i32 %28, i32* %9, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %31 = call i32 @sumo_get_temp(%struct.radeon_device* %30)
  store i32 %31, i32* %9, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %34 = call i32 @si_get_temp(%struct.radeon_device* %33)
  store i32 %34, i32* %9, align 4
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %32, %29, %26, %23, %20
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  ret i32 %40
}

declare dso_local %struct.drm_device* @pci_get_drvdata(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @rv6xx_get_temp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_temp(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_get_temp(%struct.radeon_device*) #1

declare dso_local i32 @sumo_get_temp(%struct.radeon_device*) #1

declare dso_local i32 @si_get_temp(%struct.radeon_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
