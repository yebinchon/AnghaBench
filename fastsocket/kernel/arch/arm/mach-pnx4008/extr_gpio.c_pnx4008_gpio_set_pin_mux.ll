; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_set_pin_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_set_pin_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@PIO_MUX_SET = common dso_local global i32 0, align 4
@PIO_MUX_CLR = common dso_local global i32 0, align 4
@gpio_to_mux_map = common dso_local global i32* null, align 8
@outp_to_mux_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_set_pin_mux(i16 zeroext %0, i32 %1) #0 {
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
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @PIO_MUX_SET, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @PIO_MUX_CLR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32*, i32** @gpio_to_mux_map, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_set_bit(i32 %23, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %66

30:                                               ; preds = %2
  %31 = load i16, i16* %3, align 2
  %32 = call i64 @GPIO_ISOUT(i16 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @PIO_MUX_SET, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @PIO_MUX_CLR, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32*, i32** @outp_to_mux_map, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpio_set_bit(i32 %42, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %65

49:                                               ; preds = %30
  %50 = load i16, i16* %3, align 2
  %51 = call i64 @GPIO_ISMUX(i16 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @PIO_MUX_SET, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @PIO_MUX_CLR, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @gpio_set_bit(i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %49
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %22
  %67 = call i32 (...) @gpio_unlock()
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @GPIO_BIT_MASK(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i32 @gpio_set_bit(i32, i32) #1

declare dso_local i64 @GPIO_ISOUT(i16 zeroext) #1

declare dso_local i64 @GPIO_ISMUX(i16 zeroext) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
