; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_bluebird_patch_dvico_firmware_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_bluebird_patch_dvico_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@dvico_firmware_id_offsets = common dso_local global i32* null, align 8
@USB_VID_DVICO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CYPRESS_FX2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @bluebird_patch_dvico_firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluebird_patch_dvico_firmware_download(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %106, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** @dvico_firmware_id_offsets, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %109

16:                                               ; preds = %11
  %17 = load i32*, i32** @dvico_firmware_id_offsets, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.firmware*, %struct.firmware** %5, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %106

29:                                               ; preds = %16
  %30 = load %struct.firmware*, %struct.firmware** %5, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USB_VID_DVICO, align 4
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %29
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USB_VID_DVICO, align 4
  %50 = ashr i32 %49, 8
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %40
  %53 = load %struct.firmware*, %struct.firmware** %5, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @vmalloc(i32 %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %112

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.firmware*, %struct.firmware** %5, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.firmware*, %struct.firmware** %5, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32* %63, i32* %66, i32 %69)
  %71 = load %struct.firmware*, %struct.firmware** %5, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1
  store i32* %75, i32** %76, align 8
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = add nsw i32 %81, 1
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = ashr i32 %92, 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %100 = load i32, i32* @CYPRESS_FX2, align 4
  %101 = call i32 @usb_cypress_load_firmware(%struct.usb_device* %99, %struct.firmware* %8, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @vfree(i32* %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %112

105:                                              ; preds = %40, %29
  br label %106

106:                                              ; preds = %105, %28
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %11

109:                                              ; preds = %11
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %62, %59
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_cypress_load_firmware(%struct.usb_device*, %struct.firmware*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
