; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios_pll = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)* }
%struct.nouveau_pll_vals = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nvbios_pll*, i32, i32*, i32*, i32*)* @calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll(%struct.drm_device* %0, i32 %1, %struct.nvbios_pll* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvbios_pll*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nouveau_device*, align 8
  %17 = alloca %struct.nouveau_bios*, align 8
  %18 = alloca %struct.nouveau_clock*, align 8
  %19 = alloca %struct.nouveau_pll_vals, align 4
  %20 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nvbios_pll* %2, %struct.nvbios_pll** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %22 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %21)
  store %struct.nouveau_device* %22, %struct.nouveau_device** %16, align 8
  %23 = load %struct.nouveau_device*, %struct.nouveau_device** %16, align 8
  %24 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %23)
  store %struct.nouveau_bios* %24, %struct.nouveau_bios** %17, align 8
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %16, align 8
  %26 = call %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device* %25)
  store %struct.nouveau_clock* %26, %struct.nouveau_clock** %18, align 8
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %17, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %30 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %27, i32 %28, %struct.nvbios_pll* %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %70

34:                                               ; preds = %7
  %35 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %36 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @read_pll_ref(%struct.drm_device* %38, i32 %39)
  %41 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %42 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %44 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %70

48:                                               ; preds = %34
  %49 = load %struct.nouveau_clock*, %struct.nouveau_clock** %18, align 8
  %50 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %49, i32 0, i32 0
  %51 = load i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)** %50, align 8
  %52 = load %struct.nouveau_clock*, %struct.nouveau_clock** %18, align 8
  %53 = load %struct.nvbios_pll*, %struct.nvbios_pll** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 %51(%struct.nouveau_clock* %52, %struct.nvbios_pll* %53, i32 %54, %struct.nouveau_pll_vals* %19)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %70

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %19, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %19, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %19, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %59, %58, %47, %33
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @read_pll_ref(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
