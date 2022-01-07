; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mce_request_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mce_request_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32, i32, %struct.urb*, %struct.device* }
%struct.urb = type { i32, i32 }
%struct.device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@MCEUSB_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error, couldn't allocate urb!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error, couldn't allocate buf!\0A\00", align 1
@mce_async_callback = common dso_local global i64 0, align 8
@MCEUSB_RX = common dso_local global i32 0, align 4
@RECV_FLAG_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error! Unknown urb type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"receive request called (size=%#x)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"receive request FAILED! (res=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"receive request complete (res=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, %struct.usb_endpoint_descriptor*, i8*, i32, i32)* @mce_request_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_request_packet(%struct.mceusb_dev* %0, %struct.usb_endpoint_descriptor* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mceusb_dev*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %6, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %16 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %15, i32 0, i32 3
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MCEUSB_TX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %5
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %22)
  store %struct.urb* %23, %struct.urb** %12, align 8
  %24 = load %struct.urb*, %struct.urb** %12, align 8
  %25 = icmp ne %struct.urb* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %13, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %110

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %13, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.urb*, %struct.urb** %12, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  br label %110

44:                                               ; preds = %33
  %45 = load %struct.urb*, %struct.urb** %12, align 8
  %46 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %47 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %53 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_sndintpipe(i32 %51, i32 %54)
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* @mce_async_callback, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_fill_int_urb(%struct.urb* %45, i32 %48, i32 %55, i8* %56, i32 %57, i32 %59, %struct.mceusb_dev* %60, i32 %63)
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i8* %65, i8* %66, i32 %67)
  br label %85

69:                                               ; preds = %5
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @MCEUSB_RX, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %74, i32 0, i32 2
  %76 = load %struct.urb*, %struct.urb** %75, align 8
  store %struct.urb* %76, %struct.urb** %12, align 8
  %77 = load i32, i32* @RECV_FLAG_IN_PROGRESS, align 4
  %78 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %79 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %84

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %13, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %110

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.device*, %struct.device** %13, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.urb*, %struct.urb** %12, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mceusb_dev*, %struct.mceusb_dev** %6, align 8
  %93 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.urb*, %struct.urb** %12, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.urb*, %struct.urb** %12, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call i32 @usb_submit_urb(%struct.urb* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load %struct.device*, %struct.device** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %110

106:                                              ; preds = %85
  %107 = load %struct.device*, %struct.device** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %102, %80, %39, %30
  ret void
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.mceusb_dev*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
