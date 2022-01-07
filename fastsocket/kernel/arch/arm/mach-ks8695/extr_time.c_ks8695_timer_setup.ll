; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_time.c_ks8695_timer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_time.c_ks8695_timer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_TICK_RATE = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KS8695_TMR_VA = common dso_local global i64 0, align 8
@KS8695_TMCON = common dso_local global i64 0, align 8
@TMCON_T1EN = common dso_local global i64 0, align 8
@KS8695_T1TC = common dso_local global i64 0, align 8
@KS8695_T1PD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ks8695_timer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_timer_setup() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @CLOCK_TICK_RATE, align 8
  %4 = load i64, i64* @HZ, align 8
  %5 = udiv i64 %3, %4
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* @KS8695_TMR_VA, align 8
  %7 = load i64, i64* @KS8695_TMCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @__raw_readl(i64 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @TMCON_T1EN, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = load i64, i64* @KS8695_TMR_VA, align 8
  %15 = load i64, i64* @KS8695_TMCON, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @__raw_writel(i64 %13, i64 %16)
  %18 = load i64, i64* %1, align 8
  %19 = udiv i64 %18, 2
  %20 = load i64, i64* @KS8695_TMR_VA, align 8
  %21 = load i64, i64* @KS8695_T1TC, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @__raw_writel(i64 %19, i64 %22)
  %24 = load i64, i64* %1, align 8
  %25 = udiv i64 %24, 2
  %26 = load i64, i64* @KS8695_TMR_VA, align 8
  %27 = load i64, i64* @KS8695_T1PD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @__raw_writel(i64 %25, i64 %28)
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @TMCON_T1EN, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @KS8695_TMR_VA, align 8
  %34 = load i64, i64* @KS8695_TMCON, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_writel(i64 %32, i64 %35)
  ret void
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
