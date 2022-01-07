; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_set_pin_direction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_set_pin_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@PIO_DRV_SET = common dso_local global i32 0, align 4
@PIO_DRV_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_set_pin_direction(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %7 = load i16, i16* %3, align 2
  %8 = call i32 @GPIO_BIT_MASK(i16 zeroext %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @gpio_lock()
  %12 = load i16, i16* %3, align 2
  %13 = call i64 @GPIO_ISBID(i16 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i16, i16* %3, align 2
  %17 = call i64 @GPIO_ISRAM(i16 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @PIO_DRV_SET, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @PIO_DRV_CLR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @gpio_set_bit(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %15
  %31 = call i32 (...) @gpio_unlock()
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @GPIO_BIT_MASK(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i64 @GPIO_ISRAM(i16 zeroext) #1

declare dso_local i32 @gpio_set_bit(i32, i32) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
