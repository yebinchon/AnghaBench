; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, %struct.clk* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.clk*, %struct.clk*)**
  %11 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %10, align 8
  %12 = icmp ne i32 (%struct.clk*, %struct.clk*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = call i32 (...) @clock_lock()
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.clk*, %struct.clk*)**
  %19 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %18, align 8
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = call i32 %19(%struct.clk* %20, %struct.clk* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = load %struct.clk*, %struct.clk** %3, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 1
  store %struct.clk* %26, %struct.clk** %28, align 8
  br label %29

29:                                               ; preds = %25, %14
  %30 = call i32 (...) @clock_unlock()
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @clock_lock(...) #1

declare dso_local i32 @clock_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
