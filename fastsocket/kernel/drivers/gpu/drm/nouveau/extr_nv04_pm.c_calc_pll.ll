; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_pm.c_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_pm.c_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_pm_clock = type { i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, i32*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, %struct.nv04_pm_clock*)* @calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll(%struct.drm_device* %0, i32 %1, i32 %2, %struct.nv04_pm_clock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv04_pm_clock*, align 8
  %10 = alloca %struct.nouveau_device*, align 8
  %11 = alloca %struct.nouveau_bios*, align 8
  %12 = alloca %struct.nouveau_clock*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nv04_pm_clock* %3, %struct.nv04_pm_clock** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %14)
  store %struct.nouveau_device* %15, %struct.nouveau_device** %10, align 8
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %17 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %16)
  store %struct.nouveau_bios* %17, %struct.nouveau_bios** %11, align 8
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %19 = call %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device* %18)
  store %struct.nouveau_clock* %19, %struct.nouveau_clock** %12, align 8
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.nv04_pm_clock*, %struct.nv04_pm_clock** %9, align 8
  %23 = getelementptr inbounds %struct.nv04_pm_clock, %struct.nv04_pm_clock* %22, i32 0, i32 1
  %24 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %20, i32 %21, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load %struct.nouveau_clock*, %struct.nouveau_clock** %12, align 8
  %31 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %30, i32 0, i32 0
  %32 = load i32 (%struct.nouveau_clock*, i32*, i32, i32*)*, i32 (%struct.nouveau_clock*, i32*, i32, i32*)** %31, align 8
  %33 = load %struct.nouveau_clock*, %struct.nouveau_clock** %12, align 8
  %34 = load %struct.nv04_pm_clock*, %struct.nv04_pm_clock** %9, align 8
  %35 = getelementptr inbounds %struct.nv04_pm_clock, %struct.nv04_pm_clock* %34, i32 0, i32 1
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nv04_pm_clock*, %struct.nv04_pm_clock** %9, align 8
  %38 = getelementptr inbounds %struct.nv04_pm_clock, %struct.nv04_pm_clock* %37, i32 0, i32 0
  %39 = call i32 %32(%struct.nouveau_clock* %33, i32* %35, i32 %36, i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
