; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_drain_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_drain_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*)* @cxusb_d680_dmb_drain_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_d680_dmb_drain_video(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.usb_data_stream_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.usb_data_stream_properties* %13, %struct.usb_data_stream_properties** %3, align 8
  store i32 100, i32* %4, align 4
  %14 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %3, align 8
  %15 = getelementptr inbounds %struct.usb_data_stream_properties, %struct.usb_data_stream_properties* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %50

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %46
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %3, align 8
  %34 = getelementptr inbounds %struct.usb_data_stream_properties, %struct.usb_data_stream_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_rcvbulkpipe(i32 %32, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @usb_bulk_msg(i32 %29, i32 %36, i32* %37, i32 %38, i32* %7, i32 100)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %47

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  br label %26

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @kfree(i32* %48)
  br label %50

50:                                               ; preds = %47, %24
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
