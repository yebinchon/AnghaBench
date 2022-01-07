; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvc0_pm_clock = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvc0_pm_clock*, i32)* @calc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_mem(%struct.drm_device* %0, %struct.nvc0_pm_clock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvc0_pm_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca %struct.nvbios_pll, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvc0_pm_clock* %1, %struct.nvc0_pm_clock** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %16)
  store %struct.nouveau_device* %17, %struct.nouveau_device** %8, align 8
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %19 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %18)
  store %struct.nouveau_bios* %19, %struct.nouveau_bios** %9, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %21 = call i32 @nv_rd32(%struct.nouveau_device* %20, i32 1253408)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %3
  %26 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %27 = call i32 @nv_wr32(%struct.nouveau_device* %26, i32 1274656, i32 259)
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %29 = call i32 @nv_wr32(%struct.nouveau_device* %28, i32 1274672, i32 -2128607738)
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %31 = call i32 @nv_wait(%struct.nouveau_device* %30, i32 1253408, i32 65536, i32 65536)
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %33 = call i32 @nv_wr32(%struct.nouveau_device* %32, i32 1253412, i32 70927)
  %34 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %35 = call i32 @nv_mask(%struct.nouveau_device* %34, i32 1253408, i32 1, i32 1)
  %36 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %37 = call i32 @nv_wait(%struct.nouveau_device* %36, i32 1274768, i32 131072, i32 131072)
  %38 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %39 = call i32 @nv_mask(%struct.nouveau_device* %38, i32 1253408, i32 4, i32 4)
  br label %40

40:                                               ; preds = %25, %3
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %42 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %41, i32 1253376, %struct.nvbios_pll* %10)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = call i64 @read_pll(%struct.drm_device* %46, i32 1253408)
  %48 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @nva3_calc_pll(%struct.drm_device* %53, %struct.nvbios_pll* %10, i32 %54, i32* %11, i32* null, i32* %12, i32* %13)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %59, 16
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %60, %62
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.nvc0_pm_clock*, %struct.nvc0_pm_clock** %6, align 8
  %67 = getelementptr inbounds %struct.nvc0_pm_clock, %struct.nvc0_pm_clock* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %73

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i64 @read_pll(%struct.drm_device*, i32) #1

declare dso_local i32 @nva3_calc_pll(%struct.drm_device*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
