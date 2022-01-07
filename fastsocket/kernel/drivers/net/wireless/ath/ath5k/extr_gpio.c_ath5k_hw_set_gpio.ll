; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_NUM_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_GPIODO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_gpio(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AR5K_NUM_GPIO, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = load i32, i32* @AR5K_GPIODO, align 4
  %18 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @AR5K_GPIODO, align 4
  %33 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
