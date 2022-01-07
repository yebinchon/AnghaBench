; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_fix_bad_vpll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_fix_bad_vpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)* }
%struct.nouveau_pll_vals = type { i64, i64, i64 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@PLL_VPLL1 = common dso_local global i32 0, align 4
@PLL_VPLL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VPLL %d outwith limits, attempting to fix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @nouveau_hw_fix_bad_vpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_hw_fix_bad_vpll(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_clock*, align 8
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca %struct.nvbios_pll, align 8
  %10 = alloca %struct.nouveau_pll_vals, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %5, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_device* @nv_device(i32 %16)
  store %struct.nouveau_device* %17, %struct.nouveau_device** %6, align 8
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %19 = call %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device* %18)
  store %struct.nouveau_clock* %19, %struct.nouveau_clock** %7, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %21 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %20)
  store %struct.nouveau_bios* %21, %struct.nouveau_bios** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @PLL_VPLL1, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @PLL_VPLL0, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @nvbios_pll_parse(%struct.nouveau_bios* %30, i32 %31, %struct.nvbios_pll* %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %96

35:                                               ; preds = %28
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @nouveau_hw_get_pllvals(%struct.drm_device* %36, i32 %37, %struct.nouveau_pll_vals* %10)
  %39 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %96

73:                                               ; preds = %66, %59, %52, %45, %35
  %74 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @NV_WARN(%struct.nouveau_drm* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %10, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %90 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %89, i32 0, i32 0
  %91 = load i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)** %90, align 8
  %92 = load %struct.nouveau_clock*, %struct.nouveau_clock** %7, align 8
  %93 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(%struct.nouveau_clock* %92, i32 %94, %struct.nouveau_pll_vals* %10)
  br label %96

96:                                               ; preds = %73, %72, %34
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i64 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device*, i32, %struct.nouveau_pll_vals*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
