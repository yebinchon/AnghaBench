; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_time.c_gpt_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_time.c_gpt_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_base = common dso_local global i64 0, align 8
@MX3_IR = common dso_local global i64 0, align 8
@MXC_TCTL = common dso_local global i64 0, align 8
@MX1_2_TCTL_IRQEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gpt_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpt_irq_disable() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @cpu_is_mx3()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @cpu_is_mx25()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @timer_base, align 8
  %9 = load i64, i64* @MX3_IR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @__raw_writel(i32 0, i64 %10)
  br label %25

12:                                               ; preds = %4
  %13 = load i64, i64* @timer_base, align 8
  %14 = load i64, i64* @MXC_TCTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @__raw_readl(i64 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @MX1_2_TCTL_IRQEN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i64, i64* @timer_base, align 8
  %22 = load i64, i64* @MXC_TCTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @__raw_writel(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %12, %7
  ret void
}

declare dso_local i64 @cpu_is_mx3(...) #1

declare dso_local i64 @cpu_is_mx25(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
