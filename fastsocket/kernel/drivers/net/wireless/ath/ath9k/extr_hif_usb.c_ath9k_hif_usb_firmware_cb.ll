; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.hif_device_usb = type { i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ath9k_htc: Failed to get firmware %s\0A\00", align 1
@hif_usb = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIF_USB_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @ath9k_hif_usb_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hif_usb_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hif_device_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hif_device_usb*
  store %struct.hif_device_usb* %8, %struct.hif_device_usb** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %3, align 8
  %10 = icmp ne %struct.firmware* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %13 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %17 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %101

20:                                               ; preds = %2
  %21 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %22 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %23 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32* @ath9k_htc_hw_alloc(%struct.hif_device_usb* %21, i32* @hif_usb, i32* %25)
  %27 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %28 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %30 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %98

34:                                               ; preds = %20
  %35 = load %struct.firmware*, %struct.firmware** %3, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %39 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.firmware*, %struct.firmware** %3, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %44 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %46 = call i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %93

50:                                               ; preds = %34
  %51 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %52 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %55 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %59 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %64 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %63, i32 0, i32 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %69 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ath9k_htc_hw_init(i32* %53, i32* %57, i32 %62, i32 %67, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %50
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %90

79:                                               ; preds = %50
  %80 = load %struct.firmware*, %struct.firmware** %3, align 8
  %81 = call i32 @release_firmware(%struct.firmware* %80)
  %82 = load i32, i32* @HIF_USB_READY, align 4
  %83 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %84 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %88 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %87, i32 0, i32 1
  %89 = call i32 @complete(i32* %88)
  br label %104

90:                                               ; preds = %76
  %91 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %92 = call i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb* %91)
  br label %93

93:                                               ; preds = %90, %49
  %94 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %95 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @ath9k_htc_hw_free(i32* %96)
  br label %98

98:                                               ; preds = %93, %33
  %99 = load %struct.firmware*, %struct.firmware** %3, align 8
  %100 = call i32 @release_firmware(%struct.firmware* %99)
  br label %101

101:                                              ; preds = %98, %11
  %102 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %103 = call i32 @ath9k_hif_usb_firmware_fail(%struct.hif_device_usb* %102)
  br label %104

104:                                              ; preds = %101, %79
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32* @ath9k_htc_hw_alloc(%struct.hif_device_usb*, i32*, i32*) #1

declare dso_local i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_htc_hw_init(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_htc_hw_free(i32*) #1

declare dso_local i32 @ath9k_hif_usb_firmware_fail(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
