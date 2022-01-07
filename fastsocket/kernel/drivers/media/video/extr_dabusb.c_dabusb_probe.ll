; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.usb_device*, i32, i64 }
%struct.usb_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.usb_interface = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.usb_device_id = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"dabusb: probe: vendor id 0x%x, device id 0x%x ifnum:%d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@_DABUSB_IF = common dso_local global i32 0, align 4
@dabusb = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"reset_configuration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"set_interface failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"bound to interface: %d\00", align 1
@dabusb_class = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dabusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dabusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %137

36:                                               ; preds = %2
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @_DABUSB_IF, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = icmp eq i32 %50, 39321
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %45, %36
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dabusb, align 8
  %57 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %59
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %8, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store %struct.usb_device* %66, %struct.usb_device** %68, align 8
  %69 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %70 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %75 = call i64 @usb_reset_configuration(%struct.usb_device* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %55
  %78 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %79 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 2
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %129

81:                                               ; preds = %55
  %82 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = icmp eq i32 %86, 8497
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = call i32 @dabusb_loadmem(%struct.TYPE_12__* %89, i32* null)
  br label %129

91:                                               ; preds = %81
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = call i32 @dabusb_fpga_download(%struct.TYPE_12__* %92, i32* null)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.usb_device*, %struct.usb_device** %95, align 8
  %97 = load i32, i32* @_DABUSB_IF, align 4
  %98 = call i64 @usb_set_interface(%struct.usb_device* %96, i32 %97, i32 0)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 2
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %129

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = call i32 @usb_set_intfdata(%struct.usb_interface* %113, %struct.TYPE_12__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %120 = call i32 @usb_register_dev(%struct.usb_interface* %119, i32* @dabusb_class)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %105
  %124 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %125 = call i32 @usb_set_intfdata(%struct.usb_interface* %124, %struct.TYPE_12__* null)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %137

128:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %137

129:                                              ; preds = %100, %88, %77
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store %struct.usb_device* null, %struct.usb_device** %134, align 8
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %129, %128, %123, %52, %33
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dabusb_loadmem(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dabusb_fpga_download(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_12__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
