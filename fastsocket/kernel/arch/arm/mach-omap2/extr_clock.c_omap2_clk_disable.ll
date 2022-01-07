; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i64, %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = getelementptr inbounds %struct.clk, %struct.clk* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %7
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = call i32 @_omap2_clk_disable(%struct.clk* %14)
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 2
  %18 = load %struct.clk*, %struct.clk** %17, align 8
  %19 = icmp ne %struct.clk* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.clk*, %struct.clk** %2, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 2
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  call void @omap2_clk_disable(%struct.clk* %23)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.clk*, %struct.clk** %2, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.clk*, %struct.clk** %2, align 8
  %34 = call i32 @omap2_clkdm_clk_disable(i64 %32, %struct.clk* %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %7, %1
  ret void
}

declare dso_local i32 @_omap2_clk_disable(%struct.clk*) #1

declare dso_local i32 @omap2_clkdm_clk_disable(i64, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
