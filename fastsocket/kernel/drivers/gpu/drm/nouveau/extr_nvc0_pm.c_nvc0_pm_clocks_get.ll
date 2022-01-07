; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_nvc0_pm_clocks_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_nvc0_pm_clocks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_pm_clocks_get(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = call i8* @read_clk(%struct.drm_device* %5, i32 0)
  %7 = ptrtoint i8* %6 to i32
  %8 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 2
  %14 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i32 @read_mem(%struct.drm_device* %16)
  %18 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i8* @read_clk(%struct.drm_device* %20, i32 1)
  %22 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i8* @read_clk(%struct.drm_device* %24, i32 2)
  %26 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i8* @read_clk(%struct.drm_device* %28, i32 7)
  %30 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i8* @read_clk(%struct.drm_device* %32, i32 8)
  %34 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i8* @read_clk(%struct.drm_device* %36, i32 9)
  %38 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = call i8* @read_clk(%struct.drm_device* %40, i32 12)
  %42 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = call i8* @read_clk(%struct.drm_device* %44, i32 14)
  %46 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  ret i32 0
}

declare dso_local i8* @read_clk(%struct.drm_device*, i32) #1

declare dso_local i32 @read_mem(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
