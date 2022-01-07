; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_time-acorn.c_ioc_timer_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_time-acorn.c_ioc_timer_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOC_T0LATCH = common dso_local global i32 0, align 4
@IOC_T0CNTL = common dso_local global i32 0, align 4
@IOC_T0CNTH = common dso_local global i32 0, align 4
@IOC_IRQREQA = common dso_local global i32 0, align 4
@LATCH = common dso_local global i64 0, align 8
@tick_nsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ioc_timer_gettimeoffset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @IOC_T0LATCH, align 4
  %6 = call i32 @ioc_writeb(i32 0, i32 %5)
  %7 = call i32 (...) @barrier()
  %8 = load i32, i32* @IOC_T0CNTL, align 4
  %9 = call i32 @ioc_readb(i32 %8)
  %10 = load i32, i32* @IOC_T0CNTH, align 4
  %11 = call i32 @ioc_readb(i32 %10)
  %12 = shl i32 %11, 8
  %13 = or i32 %9, %12
  store i32 %13, i32* %1, align 4
  %14 = call i32 (...) @barrier()
  %15 = load i32, i32* @IOC_IRQREQA, align 4
  %16 = call i32 @ioc_readb(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = call i32 (...) @barrier()
  %18 = load i32, i32* @IOC_T0LATCH, align 4
  %19 = call i32 @ioc_writeb(i32 0, i32 %18)
  %20 = call i32 (...) @barrier()
  %21 = load i32, i32* @IOC_T0CNTL, align 4
  %22 = call i32 @ioc_readb(i32 %21)
  %23 = load i32, i32* @IOC_T0CNTH, align 4
  %24 = call i32 @ioc_readb(i32 %23)
  %25 = shl i32 %24, 8
  %26 = or i32 %22, %25
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %0
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* @LATCH, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %50

41:                                               ; preds = %0
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* @LATCH, align 8
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i64, i64* @LATCH, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32, i32* @tick_nsec, align 4
  %55 = sdiv i32 %54, 1000
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %53, %56
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @LATCH, align 8
  %60 = sdiv i64 %59, 2
  %61 = add nsw i64 %58, %60
  %62 = load i64, i64* @LATCH, align 8
  %63 = sdiv i64 %61, %62
  ret i64 %63
}

declare dso_local i32 @ioc_writeb(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ioc_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
