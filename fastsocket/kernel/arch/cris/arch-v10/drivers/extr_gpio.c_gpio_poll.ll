; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.gpio_private* }
%struct.gpio_private = type { i64, i64, i64, i32 }

@gpio_lock = common dso_local global i32 0, align 4
@GPIO_MINOR_A = common dso_local global i64 0, align 8
@R_PORT_PA_DATA = common dso_local global i64* null, align 8
@R_IRQ_MASK1_SET__pa0__BITNR = common dso_local global i64 0, align 8
@gpio_pa_irq_enabled_mask = common dso_local global i64 0, align 8
@R_IRQ_MASK1_SET = common dso_local global i64* null, align 8
@GPIO_MINOR_B = common dso_local global i64 0, align 8
@R_PORT_PB_DATA = common dso_local global i64* null, align 8
@GPIO_MINOR_G = common dso_local global i64 0, align 8
@R_PORT_G_DATA = common dso_local global i64* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"gpio_poll ready: mask 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @gpio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.gpio_private*, %struct.gpio_private** %11, align 8
  store %struct.gpio_private* %12, %struct.gpio_private** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %13)
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %16, i32 0, i32 3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, i32* %18)
  %20 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %21 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GPIO_MINOR_A, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load i64*, i64** @R_PORT_PA_DATA, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = xor i64 %28, -1
  %30 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %31 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %29, %32
  %34 = and i64 %33, 255
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @R_IRQ_MASK1_SET__pa0__BITNR, align 8
  %37 = shl i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @gpio_pa_irq_enabled_mask, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* @gpio_pa_irq_enabled_mask, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** @R_IRQ_MASK1_SET, align 8
  store i64 %41, i64* %42, align 8
  br label %64

43:                                               ; preds = %2
  %44 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %45 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GPIO_MINOR_B, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64*, i64** @R_PORT_PB_DATA, align 8
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %54 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GPIO_MINOR_G, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i64*, i64** @R_PORT_G_DATA, align 8
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %84

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %67 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = and i64 %65, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = xor i64 %72, -1
  %74 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %75 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71, %64
  %80 = load i32, i32* @POLLIN, align 4
  %81 = load i32, i32* @POLLRDNORM, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %71
  br label %84

84:                                               ; preds = %83, %61
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %85)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = call i32 @DP(i32 %88)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DP(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
