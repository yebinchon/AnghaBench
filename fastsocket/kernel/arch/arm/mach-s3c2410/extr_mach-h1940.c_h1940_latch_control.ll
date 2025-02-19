; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_mach-h1940.c_h1940_latch_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_mach-h1940.c_h1940_latch_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@latch_state = common dso_local global i32 0, align 4
@H1940_LATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h1940_latch_control(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* %3, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @latch_state, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @latch_state, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @latch_state, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @latch_state, align 4
  %15 = load i32, i32* @latch_state, align 4
  %16 = load i32, i32* @H1940_LATCH, align 4
  %17 = call i32 @__raw_writel(i32 %15, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
