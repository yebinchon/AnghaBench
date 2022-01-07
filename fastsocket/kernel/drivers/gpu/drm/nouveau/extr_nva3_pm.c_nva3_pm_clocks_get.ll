; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_clocks_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_nva3_pm_clocks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nva3_pm_clocks_get(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = call i8* @read_pll(%struct.drm_device* %5, i32 0, i32 16896)
  %7 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i8* @read_pll(%struct.drm_device* %9, i32 1, i32 16928)
  %11 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i8* @read_pll(%struct.drm_device* %13, i32 2, i32 16384)
  %15 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i8* @read_clk(%struct.drm_device* %17, i32 32, i32 0)
  %19 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i8* @read_clk(%struct.drm_device* %21, i32 33, i32 0)
  %23 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %24 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call i8* @read_clk(%struct.drm_device* %25, i32 37, i32 0)
  %27 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %30 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %33 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  ret i32 0
}

declare dso_local i8* @read_pll(%struct.drm_device*, i32, i32) #1

declare dso_local i8* @read_clk(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
