; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_get_wacom_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_get_wacom_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.wacom_features = type { i32 }

@wacom_ids = common dso_local global %struct.usb_device_id* null, align 8
@wacom_features = common dso_local global %struct.wacom_features* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wacom_features* @get_wacom_feature(%struct.usb_device_id* %0) #0 {
  %2 = alloca %struct.usb_device_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_features*, align 8
  store %struct.usb_device_id* %0, %struct.usb_device_id** %2, align 8
  %5 = load %struct.usb_device_id*, %struct.usb_device_id** %2, align 8
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** @wacom_ids, align 8
  %7 = ptrtoint %struct.usb_device_id* %5 to i64
  %8 = ptrtoint %struct.usb_device_id* %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.wacom_features*, %struct.wacom_features** @wacom_features, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %12, i64 %14
  store %struct.wacom_features* %15, %struct.wacom_features** %4, align 8
  %16 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  ret %struct.wacom_features* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
