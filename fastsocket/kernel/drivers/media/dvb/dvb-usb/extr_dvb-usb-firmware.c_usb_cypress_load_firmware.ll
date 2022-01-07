; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-firmware.c_usb_cypress_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-firmware.c_usb_cypress_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.hexline = type { i32, i32*, i32, i32 }

@cypress = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"could not stop the USB controller CPU.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"writing to address 0x%04x (buffer: 0x%02x %02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"error while transferring firmware (transferred size: %d, block size: %d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"firmware download failed at %d with %d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"could not restart the USB controller CPU.\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_cypress_load_firmware(%struct.usb_device* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hexline, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cypress, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_cypress_writemem(%struct.usb_device* %12, i32 %18, i32* %9, i32 1)
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %3
  br label %24

24:                                               ; preds = %55, %23
  %25 = load %struct.firmware*, %struct.firmware** %6, align 8
  %26 = call i32 @dvb_usb_get_hexline(%struct.firmware* %25, %struct.hexline* %8, i32* %11)
  store i32 %26, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @deb_fw(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32, i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usb_cypress_writemem(%struct.usb_device* %36, i32 %38, i32* %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.hexline, %struct.hexline* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %56

55:                                               ; preds = %28
  br label %24

56:                                               ; preds = %48, %24
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %90

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cypress, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usb_cypress_writemem(%struct.usb_device* %71, i32 %77, i32* %9, i32 1)
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %70, %67
  %81 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %70
  br label %88

85:                                               ; preds = %64
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %59
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @usb_cypress_writemem(%struct.usb_device*, i32, i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_usb_get_hexline(%struct.firmware*, %struct.hexline*, i32*) #1

declare dso_local i32 @deb_fw(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
