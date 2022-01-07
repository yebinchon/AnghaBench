; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, {}*, i32, %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.clk*, %struct.clk** %2, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %1
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 4
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  %18 = ptrtoint %struct.clk* %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.clk*, %struct.clk** %2, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 4
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  %25 = call i32 @clk_enable(%struct.clk* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.clk*, %struct.clk** %2, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  br label %53

37:                                               ; preds = %26
  %38 = load %struct.clk*, %struct.clk** %2, align 8
  %39 = call i32 @syscon_block_reset_disable(%struct.clk* %38)
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 2
  %42 = bitcast {}** %41 to i32 (%struct.clk*)**
  %43 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %42, align 8
  %44 = icmp ne i32 (%struct.clk*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.clk*, %struct.clk** %2, align 8
  %47 = getelementptr inbounds %struct.clk, %struct.clk* %46, i32 0, i32 2
  %48 = bitcast {}** %47 to i32 (%struct.clk*)**
  %49 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %48, align 8
  %50 = load %struct.clk*, %struct.clk** %2, align 8
  %51 = call i32 %49(%struct.clk* %50)
  br label %52

52:                                               ; preds = %45, %37
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.clk*, %struct.clk** %2, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @syscon_block_reset_disable(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
