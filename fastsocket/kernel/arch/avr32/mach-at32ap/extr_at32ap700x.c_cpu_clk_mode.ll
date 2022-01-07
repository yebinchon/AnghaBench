; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_cpu_clk_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_cpu_clk_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@pm_lock = common dso_local global i32 0, align 4
@CPU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @cpu_clk_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_clk_mode(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pm_lock, i64 %7)
  %9 = load i32, i32* @CPU_MASK, align 4
  %10 = call i32 @pm_readl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.clk*, %struct.clk** %3, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* @CPU_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pm_writel(i32 %29, i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @pm_lock, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm_readl(i32) #1

declare dso_local i32 @pm_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
