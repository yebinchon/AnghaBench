; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_cfg_output_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gpio_cfg_output_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_GPIO_OUTPUT_MUX3 = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX2 = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ath9k_hw_gpio_cfg_output_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_gpio_cfg_output_mux(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 11
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @AR_GPIO_OUTPUT_MUX3, align 4
  store i32 %13, i32* %7, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 5
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @AR_GPIO_OUTPUT_MUX2, align 4
  store i32 %18, i32* %7, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @AR_GPIO_OUTPUT_MUX1, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 6
  %25 = mul nsw i32 %24, 5
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AR_GPIO_OUTPUT_MUX1, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %22
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 31, %39
  %41 = call i32 @REG_RMW(%struct.ath_hw* %34, i32 %35, i32 %38, i32 %40)
  br label %66

42:                                               ; preds = %29
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @REG_READ(%struct.ath_hw* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 496
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -497
  %51 = or i32 %48, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 31, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @REG_WRITE(%struct.ath_hw* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %42, %33
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
