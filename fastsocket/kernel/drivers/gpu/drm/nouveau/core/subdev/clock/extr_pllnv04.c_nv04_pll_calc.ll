; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_nv04_pll_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_nv04_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nvbios_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"unable to compute acceptable pll values\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_pll_calc(%struct.nouveau_clock* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.nouveau_clock*, align 8
  %10 = alloca %struct.nvbios_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %9, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %19 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %8
  %24 = load %struct.nouveau_clock*, %struct.nouveau_clock** %9, align 8
  %25 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @getMNP_single(%struct.nouveau_clock* %24, %struct.nvbios_pll* %25, i32 %26, i32* %27, i32* %28, i32* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %15, align 8
  store i32 1, i32* %32, align 4
  br label %43

33:                                               ; preds = %8
  %34 = load %struct.nouveau_clock*, %struct.nouveau_clock** %9, align 8
  %35 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @getMNP_double(%struct.nouveau_clock* %34, %struct.nvbios_pll* %35, i32 %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.nouveau_clock*, %struct.nouveau_clock** %9, align 8
  %48 = call i32 @nv_error(%struct.nouveau_clock* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %17, align 4
  ret i32 %50
}

declare dso_local i32 @getMNP_single(%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @getMNP_double(%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_error(%struct.nouveau_clock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
