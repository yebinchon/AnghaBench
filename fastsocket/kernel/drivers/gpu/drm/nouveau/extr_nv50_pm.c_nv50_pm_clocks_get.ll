; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_nv50_pm_clocks_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_nv50_pm_clocks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i8*, i8*, i8*, i8*, i8* }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@clk_src_nvclk = common dso_local global i32 0, align 4
@clk_src_sclk = common dso_local global i32 0, align 4
@clk_src_mclk = common dso_local global i32 0, align 4
@clk_src_vdec = common dso_local global i32 0, align 4
@clk_src_dom6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_pm_clocks_get(%struct.drm_device* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %6, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @nv_device(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 170
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @nv_device(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 172
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %60

25:                                               ; preds = %16
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load i32, i32* @clk_src_nvclk, align 4
  %28 = call i8* @read_clk(%struct.drm_device* %26, i32 %27)
  %29 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load i32, i32* @clk_src_sclk, align 4
  %33 = call i8* @read_clk(%struct.drm_device* %31, i32 %32)
  %34 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load i32, i32* @clk_src_mclk, align 4
  %38 = call i8* @read_clk(%struct.drm_device* %36, i32 %37)
  %39 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_2__* @nv_device(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 80
  br i1 %47, label %48, label %59

48:                                               ; preds = %25
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load i32, i32* @clk_src_vdec, align 4
  %51 = call i8* @read_clk(%struct.drm_device* %49, i32 %50)
  %52 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load i32, i32* @clk_src_dom6, align 4
  %56 = call i8* @read_clk(%struct.drm_device* %54, i32 %55)
  %57 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %48, %25
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i8* @read_clk(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
