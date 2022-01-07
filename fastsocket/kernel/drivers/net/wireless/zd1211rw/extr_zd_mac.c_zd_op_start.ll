; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { i32, %struct.zd_chip }
%struct.zd_chip = type { %struct.zd_usb }
%struct.zd_usb = type { i32 }

@CR_RATES_80211B = common dso_local global i32 0, align 4
@CR_RATES_80211G = common dso_local global i32 0, align 4
@ZD_DEVICE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.zd_mac*, align 8
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca %struct.zd_usb*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %8)
  store %struct.zd_mac* %9, %struct.zd_mac** %4, align 8
  %10 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %11 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %10, i32 0, i32 1
  store %struct.zd_chip* %11, %struct.zd_chip** %5, align 8
  %12 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %13 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %12, i32 0, i32 0
  store %struct.zd_usb* %13, %struct.zd_usb** %6, align 8
  %14 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %15 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %20 = call i32 @zd_usb_init_hw(%struct.zd_usb* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %88

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %27 = call i32 @zd_chip_enable_int(%struct.zd_chip* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %88

31:                                               ; preds = %25
  %32 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %33 = load i32, i32* @CR_RATES_80211B, align 4
  %34 = load i32, i32* @CR_RATES_80211G, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @zd_chip_set_basic_rates(%struct.zd_chip* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %85

40:                                               ; preds = %31
  %41 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %42 = call i32 @set_rx_filter(%struct.zd_mac* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %85

46:                                               ; preds = %40
  %47 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %48 = call i32 @set_mc_hash(%struct.zd_mac* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %85

52:                                               ; preds = %46
  %53 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %54 = call i32 @zd_chip_switch_radio_on(%struct.zd_chip* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %85

58:                                               ; preds = %52
  %59 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %60 = call i32 @zd_chip_enable_rxtx(%struct.zd_chip* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %82

64:                                               ; preds = %58
  %65 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %66 = call i32 @zd_chip_enable_hwint(%struct.zd_chip* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %79

70:                                               ; preds = %64
  %71 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %72 = call i32 @housekeeping_enable(%struct.zd_mac* %71)
  %73 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %74 = call i32 @beacon_enable(%struct.zd_mac* %73)
  %75 = load i32, i32* @ZD_DEVICE_RUNNING, align 4
  %76 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %77 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  store i32 0, i32* %2, align 4
  br label %90

79:                                               ; preds = %69
  %80 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %81 = call i32 @zd_chip_disable_rxtx(%struct.zd_chip* %80)
  br label %82

82:                                               ; preds = %79, %63
  %83 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %84 = call i32 @zd_chip_switch_radio_off(%struct.zd_chip* %83)
  br label %85

85:                                               ; preds = %82, %57, %51, %45, %39
  %86 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %87 = call i32 @zd_chip_disable_int(%struct.zd_chip* %86)
  br label %88

88:                                               ; preds = %85, %30, %23
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %70
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_usb_init_hw(%struct.zd_usb*) #1

declare dso_local i32 @zd_chip_enable_int(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_set_basic_rates(%struct.zd_chip*, i32) #1

declare dso_local i32 @set_rx_filter(%struct.zd_mac*) #1

declare dso_local i32 @set_mc_hash(%struct.zd_mac*) #1

declare dso_local i32 @zd_chip_switch_radio_on(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_enable_rxtx(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_enable_hwint(%struct.zd_chip*) #1

declare dso_local i32 @housekeeping_enable(%struct.zd_mac*) #1

declare dso_local i32 @beacon_enable(%struct.zd_mac*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @zd_chip_disable_rxtx(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_switch_radio_off(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_disable_int(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
