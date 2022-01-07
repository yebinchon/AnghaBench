; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_std_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_std_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @std_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_clk_disable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @__raw_readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %9
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.clk*, %struct.clk** %3, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @__raw_writel(i32 %34, i64 %37)
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
