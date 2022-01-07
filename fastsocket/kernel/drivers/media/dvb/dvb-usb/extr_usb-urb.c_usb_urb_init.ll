; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_usb-urb.c_usb_urb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_usb-urb.c_usb_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_data_stream_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"there is no data callback - this doesn't make sense.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unknown URB-type for data transfer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_urb_init(%struct.usb_data_stream* %0, %struct.usb_data_stream_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_data_stream*, align 8
  %5 = alloca %struct.usb_data_stream_properties*, align 8
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %4, align 8
  store %struct.usb_data_stream_properties* %1, %struct.usb_data_stream_properties** %5, align 8
  %6 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %7 = icmp eq %struct.usb_data_stream* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %5, align 8
  %10 = icmp eq %struct.usb_data_stream_properties* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %8
  %15 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %16 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %15, i32 0, i32 0
  %17 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %5, align 8
  %18 = call i32 @memcpy(%struct.TYPE_2__* %16, %struct.usb_data_stream_properties* %17, i32 4)
  %19 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %20 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %23 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %26 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvbulkpipe(i32 %24, i32 %28)
  %30 = call i32 @usb_clear_halt(i32 %21, i32 %29)
  %31 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %32 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %14
  %36 = call i32 @err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %14
  %40 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %41 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %50 [
    i32 129, label %44
    i32 128, label %47
  ]

44:                                               ; preds = %39
  %45 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %46 = call i32 @usb_bulk_urb_init(%struct.usb_data_stream* %45)
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %49 = call i32 @usb_isoc_urb_init(%struct.usb_data_stream* %48)
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %39
  %51 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %47, %44, %35, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.usb_data_stream_properties*, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_bulk_urb_init(%struct.usb_data_stream*) #1

declare dso_local i32 @usb_isoc_urb_init(%struct.usb_data_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
