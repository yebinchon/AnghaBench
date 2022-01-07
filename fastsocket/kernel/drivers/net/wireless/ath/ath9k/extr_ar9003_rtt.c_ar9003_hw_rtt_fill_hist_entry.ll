; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_fill_hist_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_fill_hist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_RTT_SW_RTT_TABLE_ACCESS = common dso_local global i32 0, align 4
@AR_PHY_RTT_SW_RTT_TABLE_WRITE = common dso_local global i32 0, align 4
@AR_PHY_RTT_SW_RTT_TABLE_ADDR = common dso_local global i32 0, align 4
@RTT_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@RTT_BAD_VALUE = common dso_local global i32 0, align 4
@AR_PHY_RTT_SW_RTT_TABLE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar9003_hw_rtt_fill_hist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_rtt_fill_hist_entry(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_ACCESS, align 4
  %10 = call i32 @SM(i32 0, i32 %9)
  %11 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_WRITE, align 4
  %12 = call i32 @SM(i32 0, i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_ADDR, align 4
  %16 = call i32 @SM(i32 %14, i32 %15)
  %17 = or i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @AR_PHY_RTT_TABLE_SW_INTF_B(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %18, i32 %20, i32 %21)
  %23 = call i32 @udelay(i32 1)
  %24 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_ACCESS, align 4
  %25 = call i32 @SM(i32 1, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @AR_PHY_RTT_TABLE_SW_INTF_B(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @REG_WRITE(%struct.ath_hw* %28, i32 %30, i32 %31)
  %33 = call i32 @udelay(i32 1)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @AR_PHY_RTT_TABLE_SW_INTF_B(i32 %35)
  %37 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_ACCESS, align 4
  %38 = load i32, i32* @RTT_ACCESS_TIMEOUT, align 4
  %39 = call i32 @ath9k_hw_wait(%struct.ath_hw* %34, i32 %36, i32 %37, i32 0, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @RTT_BAD_VALUE, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @AR_PHY_RTT_TABLE_SW_INTF_1_B(i32 %45)
  %47 = call i32 @REG_READ(%struct.ath_hw* %44, i32 %46)
  %48 = load i32, i32* @AR_PHY_RTT_SW_RTT_TABLE_DATA, align 4
  %49 = call i32 @MS(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_PHY_RTT_TABLE_SW_INTF_B(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_RTT_TABLE_SW_INTF_1_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
