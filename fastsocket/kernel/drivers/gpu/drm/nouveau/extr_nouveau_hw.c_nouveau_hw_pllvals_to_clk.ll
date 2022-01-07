; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_pllvals_to_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_pllvals_to_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_pll_vals = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_hw_pllvals_to_clk(%struct.nouveau_pll_vals* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_pll_vals*, align 8
  store %struct.nouveau_pll_vals* %0, %struct.nouveau_pll_vals** %3, align 8
  %4 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %8
  %15 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = sdiv i32 %25, %32
  %34 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %14, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
