; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32*)* @calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_device*, align 8
  %11 = alloca %struct.nouveau_bios*, align 8
  %12 = alloca %struct.nvbios_pll, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %10, align 8
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %10, align 8
  %20 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %19)
  store %struct.nouveau_bios* %20, %struct.nouveau_bios** %11, align 8
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 32
  %24 = add nsw i32 1273856, %23
  %25 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %21, i32 %24, %struct.nvbios_pll* %12)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

29:                                               ; preds = %4
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @read_div(%struct.drm_device* %30, i32 %31, i32 1274144, i32 1274176)
  %33 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @nva3_calc_pll(%struct.drm_device* %39, %struct.nvbios_pll* %12, i32 %40, i32* %13, i32* null, i32* %14, i32* %15)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %47, %49
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %44, %37, %28
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @read_div(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @nva3_calc_pll(%struct.drm_device*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
