; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-msm/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-msm/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@CLKFLAG_USE_MIN_MAX_TO_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLKFLAG_USE_MIN_MAX_TO_SET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.clk*, %struct.clk** %4, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @pc_clk_set_max_rate(i32 %16, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.clk*, %struct.clk** %4, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @pc_clk_set_min_rate(i32 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.clk*, %struct.clk** %4, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @pc_clk_set_rate(i32 %32, i64 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %23, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pc_clk_set_max_rate(i32, i64) #1

declare dso_local i32 @pc_clk_set_min_rate(i32, i64) #1

declare dso_local i32 @pc_clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
