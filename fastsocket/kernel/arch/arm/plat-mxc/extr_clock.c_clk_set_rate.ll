; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@clocks_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = icmp eq %struct.clk* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.clk*, i64)**
  %19 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %18, align 8
  %20 = icmp eq i32 (%struct.clk*, i64)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %11, %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %21
  %27 = call i32 @mutex_lock(i32* @clocks_mutex)
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.clk*, i64)**
  %31 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %30, align 8
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 %31(%struct.clk* %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = call i32 @mutex_unlock(i32* @clocks_mutex)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
