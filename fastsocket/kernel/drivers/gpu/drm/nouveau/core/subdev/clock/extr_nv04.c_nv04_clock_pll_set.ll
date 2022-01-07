; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_nv04_clock_pll_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_nv04_clock_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)* }
%struct.nvbios_pll = type { i32 }
%struct.nouveau_pll_vals = type { i32 }
%struct.nv04_clock_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_clock_pll_set(%struct.nouveau_clock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_clock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv04_clock_priv*, align 8
  %9 = alloca %struct.nouveau_pll_vals, align 4
  %10 = alloca %struct.nvbios_pll, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %13 = bitcast %struct.nouveau_clock* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv04_clock_priv*
  store %struct.nv04_clock_priv* %14, %struct.nv04_clock_priv** %8, align 8
  %15 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %8, align 8
  %16 = call i32 @nouveau_bios(%struct.nv04_clock_priv* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 16476
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = call i32 @nvbios_pll_parse(i32 %16, i32 %25, %struct.nvbios_pll* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, %struct.nouveau_pll_vals*)** %33, align 8
  %35 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %34(%struct.nouveau_clock* %35, %struct.nvbios_pll* %10, i32 %36, %struct.nouveau_pll_vals* %9)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %44 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %43, i32 0, i32 1
  %45 = load i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)*, i32 (%struct.nouveau_clock*, i32, %struct.nouveau_pll_vals*)** %44, align 8
  %46 = load %struct.nouveau_clock*, %struct.nouveau_clock** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %45(%struct.nouveau_clock* %46, i32 %47, %struct.nouveau_pll_vals* %9)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %40, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nouveau_bios(%struct.nv04_clock_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
