; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hw = type { %struct.p54u_priv* }
%struct.p54u_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }

@p54u_fwlist = common dso_local global %struct.TYPE_5__* null, align 8
@__NUM_P54U_HWTYPES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Loading firmware file %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@p54u_load_firmware_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"(p54usb) cannot load firmware %s (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.usb_interface*)* @p54u_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_load_firmware(%struct.ieee80211_hw* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.p54u_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.p54u_priv*, %struct.p54u_priv** %14, align 8
  store %struct.p54u_priv* %15, %struct.p54u_priv** %7, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @p54u_fwlist, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %18)
  %20 = load i64, i64* @__NUM_P54U_HWTYPES, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.p54u_priv*, %struct.p54u_priv** %7, align 8
  %25 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %24, i32 0, i32 1
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.p54u_priv*, %struct.p54u_priv** %7, align 8
  %28 = call i32 @p54_find_type(%struct.p54u_priv* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load %struct.p54u_priv*, %struct.p54u_priv** %7, align 8
  %35 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @p54u_fwlist, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = call i32 @usb_get_dev(%struct.usb_device* %45)
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @p54u_fwlist, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load %struct.p54u_priv*, %struct.p54u_priv** %7, align 8
  %57 = load i32, i32* @p54u_load_firmware_cb, align 4
  %58 = call i32 @request_firmware_nowait(i32 %47, i32 1, i32 %53, %struct.device* %54, i32 %55, %struct.p54u_priv* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %33
  %62 = load %struct.p54u_priv*, %struct.p54u_priv** %7, align 8
  %63 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @p54u_fwlist, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %33
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @p54_find_type(%struct.p54u_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, %struct.device*, i32, %struct.p54u_priv*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
