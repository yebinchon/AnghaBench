; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_cfg_gpio_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_cfg_gpio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR7010_GPIO_OE = common dso_local global i32 0, align 4
@AR7010_GPIO_OE_AS_INPUT = common dso_local global i32 0, align 4
@AR7010_GPIO_OE_MASK = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV_NO = common dso_local global i32 0, align 4
@AR_GPIO_OE_OUT_DRV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_cfg_gpio_input(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %6, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i64 @AR_DEVID_7010(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = load i32, i32* @AR7010_GPIO_OE, align 4
  %21 = load i32, i32* @AR7010_GPIO_OE_AS_INPUT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @AR7010_GPIO_OE_MASK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @REG_RMW(%struct.ath_hw* %19, i32 %20, i32 %23, i32 %26)
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i32, i32* @AR_GPIO_OE_OUT, align 4
  %33 = load i32, i32* @AR_GPIO_OE_OUT_DRV_NO, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @AR_GPIO_OE_OUT_DRV, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @REG_RMW(%struct.ath_hw* %31, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %28, %17
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
