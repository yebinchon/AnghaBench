; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c___clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c___clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk*, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @__clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @__raw_readl(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ep93xx_syscon_swlocked_write(i32 %30, i64 %33)
  br label %41

35:                                               ; preds = %14
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @__raw_writel(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.clk*, %struct.clk** %2, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 0
  %45 = load %struct.clk*, %struct.clk** %44, align 8
  %46 = icmp ne %struct.clk* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.clk*, %struct.clk** %2, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load %struct.clk*, %struct.clk** %49, align 8
  call void @__clk_disable(%struct.clk* %50)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @ep93xx_syscon_swlocked_write(i32, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
