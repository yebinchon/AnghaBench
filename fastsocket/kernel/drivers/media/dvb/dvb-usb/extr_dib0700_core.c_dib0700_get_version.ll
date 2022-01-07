; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_get_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_get_version(%struct.dvb_usb_device* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvctrlpipe(i32 %18, i32 0)
  %20 = load i32, i32* @REQUEST_GET_VERSION, align 4
  %21 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %22 = load i32, i32* @USB_DIR_IN, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %26 = call i32 @usb_control_msg(i32 %15, i32 %19, i32 %20, i32 %23, i32 0, i32 0, i32* %24, i32 64, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %5
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = shl i32 %31, 24
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %32, %35
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 8
  %40 = or i32 %36, %39
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %40, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %5
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  %50 = load i32, i32* %49, align 16
  %51 = shl i32 %50, 24
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 6
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 8
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %59, %61
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %48, %45
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 8
  %69 = load i32, i32* %68, align 16
  %70 = shl i32 %69, 24
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 9
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %70, %73
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 10
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 8
  %78 = or i32 %74, %77
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 11
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %78, %80
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %67, %64
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 12
  %88 = load i32, i32* %87, align 16
  %89 = shl i32 %88, 24
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 13
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %89, %92
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 14
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %95, 8
  %97 = or i32 %93, %96
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 15
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %97, %99
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %86, %83
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
