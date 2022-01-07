; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"clear tuner gpio failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"set tuner gpio failed\00", align 1
@lgs8gxx_attach = common dso_local global i32 0, align 4
@d680_lgs8gl5_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_d680_dmb_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_d680_dmb_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @usb_set_interface(i32 %11, i32 0, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_sndbulkpipe(i32 %22, i32 %26)
  %28 = call i32 @usb_clear_halt(i32 %19, i32 %27)
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_rcvbulkpipe(i32 %34, i32 %38)
  %40 = call i32 @usb_clear_halt(i32 %31, i32 %39)
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_rcvbulkpipe(i32 %46, i32 %54)
  %56 = call i32 @usb_clear_halt(i32 %43, i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %66, %16
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %62 = call i32 @cxusb_d680_dmb_drain_message(%struct.dvb_usb_device* %61)
  %63 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %64 = call i32 @cxusb_d680_dmb_drain_video(%struct.dvb_usb_device* %63)
  %65 = call i32 @msleep(i32 200)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %57

69:                                               ; preds = %57
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %71 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %70, i32 7, i32 0)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %102

77:                                               ; preds = %69
  %78 = call i32 @msleep(i32 100)
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %80 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %79, i32 7, i32 1)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %102

86:                                               ; preds = %77
  %87 = call i32 @msleep(i32 100)
  %88 = load i32, i32* @lgs8gxx_attach, align 4
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %89, i32 0, i32 0
  %91 = call i32* @dvb_attach(i32 %88, i32* @d680_lgs8gl5_cfg, i32* %90)
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %98, %82, %73
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @cxusb_d680_dmb_drain_message(%struct.dvb_usb_device*) #1

declare dso_local i32 @cxusb_d680_dmb_drain_video(%struct.dvb_usb_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
