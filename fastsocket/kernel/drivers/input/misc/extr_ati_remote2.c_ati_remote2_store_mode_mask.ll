; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_store_mode_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_store_mode_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.ati_remote2 = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@ATI_REMOTE2_MAX_MODE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ati_remote2_store_mode_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ati_remote2_store_mode_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.ati_remote2*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_device* @to_usb_device(%struct.device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %17 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %16, i32 0)
  store %struct.usb_interface* %17, %struct.usb_interface** %11, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %19 = call %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface* %18)
  store %struct.ati_remote2* %19, %struct.ati_remote2** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strict_strtoul(i8* %20, i32 0, i64* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %40

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @ATI_REMOTE2_MAX_MODE_MASK, align 8
  %29 = xor i64 %28, -1
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.ati_remote2*, %struct.ati_remote2** %12, align 8
  %38 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %32, %23
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
