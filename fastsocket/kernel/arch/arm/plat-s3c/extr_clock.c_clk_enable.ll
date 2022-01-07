; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_clock.c_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_clock.c_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 (%struct.clk*, i32)*, i32, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4
@clocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = call i64 @IS_ERR(%struct.clk* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = icmp eq %struct.clk* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %7
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 2
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  %17 = call i32 @clk_enable(%struct.clk* %16)
  %18 = call i32 @spin_lock(i32* @clocks_lock)
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.clk*, %struct.clk** %3, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %26, align 8
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = call i32 %27(%struct.clk* %28, i32 1)
  br label %30

30:                                               ; preds = %24, %13
  %31 = call i32 @spin_unlock(i32* @clocks_lock)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
