; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_clock.c_clk_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_clock.c_clk_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, {}*, %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_get_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = call i64 @IS_ERR(%struct.clk* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.clk*, %struct.clk** %3, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  br label %44

17:                                               ; preds = %8
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to i64 (%struct.clk*)**
  %21 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %20, align 8
  %22 = icmp ne i64 (%struct.clk*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 1
  %26 = bitcast {}** %25 to i64 (%struct.clk*)**
  %27 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %26, align 8
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = call i64 %27(%struct.clk* %28)
  store i64 %29, i64* %2, align 8
  br label %44

30:                                               ; preds = %17
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 2
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  %34 = icmp ne %struct.clk* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 2
  %38 = load %struct.clk*, %struct.clk** %37, align 8
  %39 = call i64 @clk_get_rate(%struct.clk* %38)
  store i64 %39, i64* %2, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.clk*, %struct.clk** %3, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %40, %35, %23, %13, %7
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
