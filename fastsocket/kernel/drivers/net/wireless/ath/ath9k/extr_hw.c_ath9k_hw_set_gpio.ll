; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR7010_GPIO_OUT = common dso_local global i32 0, align 4
@AR_GPIO_IN_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set_gpio(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = call i64 @AR_DEVID_7010(%struct.ath_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = load i32, i32* @AR7010_GPIO_OUT, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @AR_GPIO_BIT(i32 %21)
  %23 = call i32 @REG_RMW(%struct.ath_hw* %15, i32 %16, i32 %20, i32 %22)
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = call i64 @AR_SREV_9271(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = load i32, i32* @AR_GPIO_IN_OUT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AR_GPIO_BIT(i32 %38)
  %40 = call i32 @REG_RMW(%struct.ath_hw* %32, i32 %33, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %31, %10
  ret void
}

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_GPIO_BIT(i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
