; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_read_pin_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_read_pin_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@PIO_MUX_STATE = common dso_local global i32 0, align 4
@gpio_to_mux_map = common dso_local global i32* null, align 8
@outp_to_mux_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_read_pin_mux(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* %2, align 2
  %6 = call i32 @GPIO_BIT_MASK(i16 zeroext %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EFAULT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @gpio_lock()
  %10 = load i16, i16* %2, align 2
  %11 = call i64 @GPIO_ISBID(i16 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @PIO_MUX_STATE, align 4
  %15 = load i32*, i32** @gpio_to_mux_map, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpio_read_bit(i32 %14, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load i16, i16* %2, align 2
  %23 = call i64 @GPIO_ISOUT(i16 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* @PIO_MUX_STATE, align 4
  %27 = load i32*, i32** @outp_to_mux_map, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_read_bit(i32 %26, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load i16, i16* %2, align 2
  %35 = call i64 @GPIO_ISMUX(i16 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @PIO_MUX_STATE, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @gpio_read_bit(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %13
  %44 = call i32 (...) @gpio_unlock()
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @GPIO_BIT_MASK(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i32 @gpio_read_bit(i32, i32) #1

declare dso_local i64 @GPIO_ISOUT(i16 zeroext) #1

declare dso_local i64 @GPIO_ISMUX(i16 zeroext) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
