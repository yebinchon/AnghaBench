; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_clock.c_clk_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_clock.c_clk_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, i64, %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_get_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 0
  %6 = bitcast {}** %5 to i64 (%struct.clk*)**
  %7 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %6, align 8
  %8 = icmp ne i64 (%struct.clk*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i64 (%struct.clk*)**
  %13 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %12, align 8
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = call i64 %13(%struct.clk* %14)
  store i64 %15, i64* %2, align 8
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.clk*, %struct.clk** %3, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %2, align 8
  br label %36

25:                                               ; preds = %16
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 2
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = icmp ne %struct.clk* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 2
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  %34 = call i64 @clk_get_rate(%struct.clk* %33)
  store i64 %34, i64* %2, align 8
  br label %36

35:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %36

36:                                               ; preds = %35, %30, %21, %9
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
