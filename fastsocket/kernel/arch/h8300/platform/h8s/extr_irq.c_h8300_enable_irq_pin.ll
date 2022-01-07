; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_irq.c_h8300_enable_irq_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_irq.c_h8300_enable_irq_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_IRQ0 = common dso_local global i32 0, align 4
@EXT_IRQ15 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@H8300_GPIO_INPUT = common dso_local global i32 0, align 4
@ISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_enable_irq_pin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @EXT_IRQ0, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @EXT_IRQ15, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EXT_IRQ0, align 4
  %17 = sub i32 %15, %16
  %18 = shl i32 1, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %4, align 2
  %20 = load i16, i16* %4, align 2
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @IRQ_GPIO_MAP(i16 zeroext %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @H8300_GPIO_RESERVE(i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @H8300_GPIO_INPUT, align 4
  %36 = call i32 @H8300_GPIO_DDR(i32 %33, i32 %34, i32 %35)
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = xor i32 %38, -1
  %40 = load i64, i64* @ISR, align 8
  %41 = inttoptr i64 %40 to i16*
  %42 = load volatile i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, %39
  %45 = trunc i32 %44 to i16
  store volatile i16 %45, i16* %41, align 2
  br label %46

46:                                               ; preds = %32, %10, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @IRQ_GPIO_MAP(i16 zeroext, i32, i32, i32) #1

declare dso_local i64 @H8300_GPIO_RESERVE(i32, i32) #1

declare dso_local i32 @H8300_GPIO_DDR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
