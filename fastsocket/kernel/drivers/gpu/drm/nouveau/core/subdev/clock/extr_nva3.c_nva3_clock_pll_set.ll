; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nva3.c_nva3_clock_pll_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nva3.c_nva3_clock_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nva3_clock_priv = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"0x%08x/%dKhz unimplemented\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_clock*, i32, i32)* @nva3_clock_pll_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nva3_clock_pll_set(%struct.nouveau_clock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_clock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nva3_clock_priv*, align 8
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca %struct.nvbios_pll, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %17 = bitcast %struct.nouveau_clock* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nva3_clock_priv*
  store %struct.nva3_clock_priv* %18, %struct.nva3_clock_priv** %8, align 8
  %19 = load %struct.nva3_clock_priv*, %struct.nva3_clock_priv** %8, align 8
  %20 = call %struct.nouveau_bios* @nouveau_bios(%struct.nva3_clock_priv* %19)
  store %struct.nouveau_bios* %20, %struct.nouveau_bios** %9, align 8
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %21, i32 %22, %struct.nvbios_pll* %10)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %4, align 4
  br label %73

28:                                               ; preds = %3
  %29 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nva3_pll_calc(%struct.nouveau_clock* %29, %struct.nvbios_pll* %10, i32 %30, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %64 [
    i32 129, label %39
    i32 128, label %39
  ]

39:                                               ; preds = %36, %36
  %40 = load %struct.nva3_clock_priv*, %struct.nva3_clock_priv** %8, align 8
  %41 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 0
  %44 = call i32 @nv_wr32(%struct.nva3_clock_priv* %40, i64 %43, i32 1342178832)
  %45 = load %struct.nva3_clock_priv*, %struct.nva3_clock_priv** %8, align 8
  %46 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @nv_mask(%struct.nva3_clock_priv* %45, i32 %49, i32 4194303, i32 %56)
  %58 = load %struct.nva3_clock_priv*, %struct.nva3_clock_priv** %8, align 8
  %59 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @nv_wr32(%struct.nva3_clock_priv* %58, i64 %61, i32 %62)
  br label %71

64:                                               ; preds = %36
  %65 = load %struct.nva3_clock_priv*, %struct.nva3_clock_priv** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @nv_warn(%struct.nva3_clock_priv* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %64, %39
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %34, %26
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nva3_clock_priv*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nva3_pll_calc(%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_wr32(%struct.nva3_clock_priv*, i64, i32) #1

declare dso_local i32 @nv_mask(%struct.nva3_clock_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nva3_clock_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
