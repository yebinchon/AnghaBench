; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.rt2x00_ops = type { i32 }
%struct.usb_device = type { i32 }
%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, i32, %struct.ieee80211_hw*, %struct.rt2x00_ops*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate hardware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_USB = common dso_local global i32 0, align 4
@rt2x00usb_work_rxdone = common dso_local global i32 0, align 4
@rt2x00usb_work_txdone = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00usb_probe(%struct.usb_interface* %0, %struct.rt2x00_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.rt2x00_ops*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.rt2x00_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.rt2x00_ops* %1, %struct.rt2x00_ops** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = call i32 @usb_reset_device(%struct.usb_device* %14)
  %16 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %17 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 40, i32 %18)
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %7, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %21 = icmp ne %struct.ieee80211_hw* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %27, %struct.ieee80211_hw* %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %30, i32 0, i32 0
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %31, align 8
  store %struct.rt2x00_dev* %32, %struct.rt2x00_dev** %8, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 4
  store %struct.rt2x00_ops* %37, %struct.rt2x00_ops** %39, align 8
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 3
  store %struct.ieee80211_hw* %40, %struct.ieee80211_hw** %42, align 8
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %44 = load i32, i32* @RT2X00_CHIP_INTF_USB, align 4
  %45 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %43, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 2
  %48 = load i32, i32* @rt2x00usb_work_rxdone, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 1
  %52 = load i32, i32* @rt2x00usb_work_txdone, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 0
  %56 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %57 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %58 = call i32 @hrtimer_init(i32* %55, i32 %56, i32 %57)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %60 = call i32 @rt2x00usb_alloc_reg(%struct.rt2x00_dev* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %26
  br label %74

64:                                               ; preds = %26
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %66 = call i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %83

71:                                               ; preds = %69
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %73 = call i32 @rt2x00usb_free_reg(%struct.rt2x00_dev* %72)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %76 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %75)
  br label %77

77:                                               ; preds = %74, %22
  %78 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %79 = call i32 @usb_put_dev(%struct.usb_device* %78)
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = call i32 @usb_set_intfdata(%struct.usb_interface* %80, %struct.ieee80211_hw* null)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ieee80211_hw*) #1

declare dso_local i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hrtimer_init(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_alloc_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00usb_free_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
