; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_time.c_ks8695_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_time.c_ks8695_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KS8695_TMR_VA = common dso_local global i64 0, align 8
@KS8695_T1TC = common dso_local global i64 0, align 8
@KS8695_T1PD = common dso_local global i64 0, align 8
@KS8695_IRQ_VA = common dso_local global i64 0, align 8
@KS8695_INTST = common dso_local global i64 0, align 8
@KS8695_IRQ_TIMER1 = common dso_local global i32 0, align 4
@CLOCK_TICK_RATE = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@tick_nsec = common dso_local global i32 0, align 4
@LATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ks8695_gettimeoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ks8695_gettimeoffset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @KS8695_TMR_VA, align 8
  %5 = load i64, i64* @KS8695_T1TC, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @__raw_readl(i64 %6)
  %8 = load i64, i64* @KS8695_TMR_VA, align 8
  %9 = load i64, i64* @KS8695_T1PD, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @__raw_readl(i64 %10)
  %12 = add nsw i32 %7, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %34, %0
  %15 = load i64, i64* %1, align 8
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* @KS8695_IRQ_VA, align 8
  %17 = load i64, i64* @KS8695_INTST, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @__raw_readl(i64 %18)
  %20 = load i32, i32* @KS8695_IRQ_TIMER1, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* @KS8695_TMR_VA, align 8
  %25 = load i64, i64* @KS8695_T1TC, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @__raw_readl(i64 %26)
  %28 = load i64, i64* @KS8695_TMR_VA, align 8
  %29 = load i64, i64* @KS8695_T1PD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_readl(i64 %30)
  %32 = add nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %1, align 8
  br label %34

34:                                               ; preds = %14
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* %2, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %14, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @CLOCK_TICK_RATE, align 8
  %40 = load i64, i64* @HZ, align 8
  %41 = udiv i64 %39, %40
  %42 = load i64, i64* %1, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* @CLOCK_TICK_RATE, align 8
  %48 = load i64, i64* @HZ, align 8
  %49 = udiv i64 %47, %48
  %50 = load i64, i64* %1, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %1, align 8
  br label %52

52:                                               ; preds = %46, %38
  %53 = load i64, i64* %1, align 8
  %54 = load i32, i32* @tick_nsec, align 4
  %55 = sdiv i32 %54, 1000
  %56 = sext i32 %55 to i64
  %57 = mul i64 %53, %56
  %58 = load i64, i64* @LATCH, align 8
  %59 = udiv i64 %57, %58
  ret i64 %59
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
