; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.ar9170 = type { %struct.usb_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.usb_device = type { i32 }

@carl9170_usb_tasklet = common dso_local global i32 0, align 4
@CARL9170_STOPPED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@CARL9170FW_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@carl9170_usb_firmware_step2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @carl9170_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  %11 = call i32 @usb_reset_device(%struct.usb_device* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = call %struct.ar9170* @carl9170_alloc(i32 88)
  store %struct.ar9170* %17, %struct.ar9170** %6, align 8
  %18 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %19 = call i64 @IS_ERR(%struct.ar9170* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.ar9170* %22)
  store i32 %23, i32* %3, align 4
  br label %117

24:                                               ; preds = %16
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %25)
  store %struct.usb_device* %26, %struct.usb_device** %7, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %28 = call i32 @usb_get_dev(%struct.usb_device* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %30 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 0
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 19
  store %struct.usb_interface* %32, %struct.usb_interface** %34, align 8
  %35 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 18
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %42 = call i32 @usb_set_intfdata(%struct.usb_interface* %40, %struct.ar9170* %41)
  %43 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = call i32 @SET_IEEE80211_DEV(i32 %45, i32* %47)
  %49 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %50 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %49, i32 0, i32 16
  %51 = call i32 @init_usb_anchor(i32* %50)
  %52 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 15
  %54 = call i32 @init_usb_anchor(i32* %53)
  %55 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 14
  %57 = call i32 @init_usb_anchor(i32* %56)
  %58 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 13
  %60 = call i32 @init_usb_anchor(i32* %59)
  %61 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %62 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %61, i32 0, i32 12
  %63 = call i32 @init_usb_anchor(i32* %62)
  %64 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 11
  %66 = call i32 @init_usb_anchor(i32* %65)
  %67 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 10
  %69 = call i32 @init_usb_anchor(i32* %68)
  %70 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 9
  %72 = call i32 @init_completion(i32* %71)
  %73 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %74 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %73, i32 0, i32 8
  %75 = call i32 @init_completion(i32* %74)
  %76 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %77 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %76, i32 0, i32 7
  %78 = call i32 @init_completion(i32* %77)
  %79 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %80 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %79, i32 0, i32 6
  %81 = load i32, i32* @carl9170_usb_tasklet, align 4
  %82 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %83 = ptrtoint %struct.ar9170* %82 to i64
  %84 = call i32 @tasklet_init(i32* %80, i32 %81, i64 %83)
  %85 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %86 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %85, i32 0, i32 5
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 4
  %90 = call i32 @atomic_set(i32* %89, i32 0)
  %91 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %92 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %91, i32 0, i32 3
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  %94 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %95 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %94, i32 0, i32 2
  %96 = call i32 @atomic_set(i32* %95, i32 0)
  %97 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %98 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %97, i32 0, i32 1
  %99 = call i32 @atomic_set(i32* %98, i32 0)
  %100 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 0
  %102 = load %struct.usb_device*, %struct.usb_device** %101, align 8
  %103 = call i32 @usb_get_dev(%struct.usb_device* %102)
  %104 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %105 = load i32, i32* @CARL9170_STOPPED, align 4
  %106 = call i32 @carl9170_set_state(%struct.ar9170* %104, i32 %105)
  %107 = load i32, i32* @THIS_MODULE, align 4
  %108 = load i32, i32* @CARL9170FW_NAME, align 4
  %109 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %110 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %109, i32 0, i32 0
  %111 = load %struct.usb_device*, %struct.usb_device** %110, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 0
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %115 = load i32, i32* @carl9170_usb_firmware_step2, align 4
  %116 = call i32 @request_firmware_nowait(i32 %107, i32 1, i32 %108, i32* %112, i32 %113, %struct.ar9170* %114, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %24, %21, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ar9170* @carl9170_alloc(i32) #1

declare dso_local i64 @IS_ERR(%struct.ar9170*) #1

declare dso_local i32 @PTR_ERR(%struct.ar9170*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ar9170*) #1

declare dso_local i32 @SET_IEEE80211_DEV(i32, i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @carl9170_set_state(%struct.ar9170*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
