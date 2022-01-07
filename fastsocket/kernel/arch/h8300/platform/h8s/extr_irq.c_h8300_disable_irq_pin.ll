; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_irq.c_h8300_disable_irq_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8s/extr_irq.c_h8300_disable_irq_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_IRQ0 = common dso_local global i32 0, align 4
@EXT_IRQ15 = common dso_local global i32 0, align 4
@ISR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8300_disable_irq_pin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @EXT_IRQ0, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @EXT_IRQ15, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @EXT_IRQ0, align 4
  %16 = sub i32 %14, %15
  %17 = shl i32 1, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load i64, i64* @ISR, align 8
  %23 = inttoptr i64 %22 to i16*
  %24 = load volatile i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, %21
  %27 = trunc i32 %26 to i16
  store volatile i16 %27, i16* %23, align 2
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, -1
  %31 = load i64, i64* @IER, align 8
  %32 = inttoptr i64 %31 to i16*
  %33 = load volatile i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, %30
  %36 = trunc i32 %35 to i16
  store volatile i16 %36, i16* %32, align 2
  %37 = load i16, i16* %3, align 2
  %38 = load i32, i32* %2, align 4
  %39 = load i16, i16* %4, align 2
  %40 = load i16, i16* %5, align 2
  %41 = call i32 @IRQ_GPIO_MAP(i16 zeroext %37, i32 %38, i16 zeroext %39, i16 zeroext %40)
  %42 = load i16, i16* %4, align 2
  %43 = load i16, i16* %5, align 2
  %44 = call i32 @H8300_GPIO_FREE(i16 zeroext %42, i16 zeroext %43)
  br label %45

45:                                               ; preds = %13, %9, %1
  ret void
}

declare dso_local i32 @IRQ_GPIO_MAP(i16 zeroext, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @H8300_GPIO_FREE(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
