; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i64, i32 }
%struct.hif_device_usb = type { i32, i32, i32 }

@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@HIF_USB_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ath9k_htc: USB layer deinitialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ath9k_hif_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hif_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.hif_device_usb*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6)
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.hif_device_usb* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.hif_device_usb* %9, %struct.hif_device_usb** %4, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %18 = icmp ne %struct.hif_device_usb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %22 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %21, i32 0, i32 2
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %25 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HIF_USB_READY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %32 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ath9k_htc_hw_deinit(i32 %33, i32 %34)
  %36 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %37 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ath9k_htc_hw_free(i32 %38)
  %40 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %41 = call i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb* %40)
  br label %42

42:                                               ; preds = %30, %20
  %43 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %44 = call i32 @usb_set_intfdata(%struct.usb_interface* %43, i32* null)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %49 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HIF_USB_READY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = call i32 @ath9k_hif_usb_reboot(%struct.usb_device* %55)
  br label %57

57:                                               ; preds = %54, %47, %42
  %58 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %59 = call i32 @kfree(%struct.hif_device_usb* %58)
  %60 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 1
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %64 = call i32 @usb_put_dev(%struct.usb_device* %63)
  br label %65

65:                                               ; preds = %57, %19
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hif_device_usb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ath9k_htc_hw_deinit(i32, i32) #1

declare dso_local i32 @ath9k_htc_hw_free(i32) #1

declare dso_local i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @ath9k_hif_usb_reboot(%struct.usb_device*) #1

declare dso_local i32 @kfree(%struct.hif_device_usb*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
