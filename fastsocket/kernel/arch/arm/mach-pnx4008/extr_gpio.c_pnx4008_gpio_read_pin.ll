; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_read_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_read_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i64 0, align 8
@PIO_OUTP_STATE = common dso_local global i32 0, align 4
@PIO_DRV_STATE = common dso_local global i32 0, align 4
@PIO_SDINP_STATE = common dso_local global i32 0, align 4
@PIO_INP_STATE = common dso_local global i32 0, align 4
@gpio_to_inp_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pnx4008_gpio_read_pin(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %5 = load i64, i64* @EFAULT, align 8
  %6 = sub i64 0, %5
  store i64 %6, i64* %3, align 8
  %7 = load i16, i16* %2, align 2
  %8 = call i32 @GPIO_BIT_MASK(i16 zeroext %7)
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @gpio_lock()
  %10 = load i16, i16* %2, align 2
  %11 = call i64 @GPIO_ISOUT(i16 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PIO_OUTP_STATE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @gpio_read_bit(i32 %14, i32 %15)
  store i64 %16, i64* %3, align 8
  br label %69

17:                                               ; preds = %1
  %18 = load i16, i16* %2, align 2
  %19 = call i64 @GPIO_ISRAM(i16 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* @PIO_DRV_STATE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @gpio_read_bit(i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @PIO_SDINP_STATE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @gpio_read_bit(i32 %27, i32 %28)
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %26, %21
  br label %68

31:                                               ; preds = %17
  %32 = load i16, i16* %2, align 2
  %33 = call i64 @GPIO_ISBID(i16 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, i32* @PIO_DRV_STATE, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @gpio_read_bit(i32 %36, i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @PIO_OUTP_STATE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @gpio_read_bit(i32 %42, i32 %43)
  store i64 %44, i64* %3, align 8
  br label %57

45:                                               ; preds = %35
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @PIO_INP_STATE, align 4
  %50 = load i32*, i32** @gpio_to_inp_map, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @gpio_read_bit(i32 %49, i32 %54)
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %48, %45
  br label %57

57:                                               ; preds = %56, %41
  br label %67

58:                                               ; preds = %31
  %59 = load i16, i16* %2, align 2
  %60 = call i64 @GPIO_ISIN(i16 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @PIO_INP_STATE, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @gpio_read_bit(i32 %63, i32 %64)
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %30
  br label %69

69:                                               ; preds = %68, %13
  %70 = call i32 (...) @gpio_unlock()
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @GPIO_BIT_MASK(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISOUT(i16 zeroext) #1

declare dso_local i64 @gpio_read_bit(i32, i32) #1

declare dso_local i64 @GPIO_ISRAM(i16 zeroext) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i64 @GPIO_ISIN(i16 zeroext) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
