; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i32, i32, %struct.clk*, i32 (%struct.clk*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** %2, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %12
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 4
  %21 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %20, align 8
  %22 = icmp ne i32 (%struct.clk*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.clk*, %struct.clk** %2, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 4
  %26 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %25, align 8
  %27 = load %struct.clk*, %struct.clk** %2, align 8
  %28 = call i32 %26(%struct.clk* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.clk*, %struct.clk** %2, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 3
  %32 = load %struct.clk*, %struct.clk** %31, align 8
  %33 = ptrtoint %struct.clk* %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 3
  %39 = load %struct.clk*, %struct.clk** %38, align 8
  call void @clk_disable(%struct.clk* %39)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %12, %1
  %42 = load %struct.clk*, %struct.clk** %2, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
