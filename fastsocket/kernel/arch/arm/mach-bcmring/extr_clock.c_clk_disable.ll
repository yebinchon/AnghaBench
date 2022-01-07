; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@clk_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = icmp ne %struct.clk* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @clk_lock, i64 %8)
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = call i32 @__clk_disable(%struct.clk* %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @clk_lock, i64 %12)
  br label %14

14:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clk_disable(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
