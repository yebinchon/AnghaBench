; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_write_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_write_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"writing '%x' to '%x'\0A\00", align 1
@PIO_OUTP_SET = common dso_local global i32 0, align 4
@PIO_OUTP_CLR = common dso_local global i32 0, align 4
@PIO_DRV_STATE = common dso_local global i32 0, align 4
@PIO_SDOUTP_SET = common dso_local global i32 0, align 4
@PIO_SDOUTP_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_write_pin(i16 zeroext %0, i32 %1) #0 {
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
  %13 = call i64 @GPIO_ISOUT(i16 zeroext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PIO_OUTP_SET, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @PIO_OUTP_CLR, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @PIO_OUTP_SET, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @PIO_OUTP_CLR, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @gpio_set_bit(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %80

36:                                               ; preds = %2
  %37 = load i16, i16* %3, align 2
  %38 = call i64 @GPIO_ISRAM(i16 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* @PIO_DRV_STATE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @gpio_read_bit(i32 %41, i32 %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @PIO_SDOUTP_SET, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @PIO_SDOUTP_CLR, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @gpio_set_bit(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %40
  br label %79

57:                                               ; preds = %36
  %58 = load i16, i16* %3, align 2
  %59 = call i64 @GPIO_ISBID(i16 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* @PIO_DRV_STATE, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @gpio_read_bit(i32 %62, i32 %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @PIO_OUTP_SET, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @PIO_OUTP_CLR, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @gpio_set_bit(i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %61
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %32
  %81 = call i32 (...) @gpio_unlock()
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @GPIO_BIT_MASK(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISOUT(i16 zeroext) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @gpio_set_bit(i32, i32) #1

declare dso_local i64 @GPIO_ISRAM(i16 zeroext) #1

declare dso_local i64 @gpio_read_bit(i32, i32) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
