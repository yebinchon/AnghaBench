; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ath9k_htc: Firmware - %s download failed\0A\00", align 1
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ath9k_htc: Unable to allocate URBs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  %8 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %9 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %13 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %12, i64 0
  store %struct.usb_host_interface* %13, %struct.usb_host_interface** %4, align 8
  %14 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %15 = call i32 @ath9k_hif_usb_download_fw(%struct.hif_device_usb* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %20 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %24 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %82

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %66, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %32 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %43, %struct.usb_endpoint_descriptor** %5, align 8
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %36
  %52 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %64 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %51, %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %29

69:                                               ; preds = %29
  %70 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %71 = call i32 @ath9k_hif_usb_alloc_urbs(%struct.hif_device_usb* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %76 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %74, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @ath9k_hif_usb_download_fw(%struct.hif_device_usb*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ath9k_hif_usb_alloc_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
