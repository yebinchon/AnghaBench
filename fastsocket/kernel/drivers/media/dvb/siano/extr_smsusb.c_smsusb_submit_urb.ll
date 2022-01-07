; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_submit_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsusb_device_t = type { i32, i32, i32 }
%struct.smsusb_urb_t = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"smscore_getbuffer(...) returned NULL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smsusb_onresponse = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsusb_device_t*, %struct.smsusb_urb_t*)* @smsusb_submit_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb_submit_urb(%struct.smsusb_device_t* %0, %struct.smsusb_urb_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsusb_device_t*, align 8
  %5 = alloca %struct.smsusb_urb_t*, align 8
  store %struct.smsusb_device_t* %0, %struct.smsusb_device_t** %4, align 8
  store %struct.smsusb_urb_t* %1, %struct.smsusb_urb_t** %5, align 8
  %6 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %7 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %12 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_5__* @smscore_getbuffer(i32 %13)
  %15 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %16 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %15, i32 0, i32 1
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %18 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = call i32 @sms_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %28 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %27, i32 0, i32 0
  %29 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %30 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %33 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_rcvbulkpipe(i32 %34, i32 129)
  %36 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %37 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %42 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @smsusb_onresponse, align 4
  %45 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %46 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %28, i32 %31, i32 %35, i32 %40, i32 %43, i32 %44, %struct.smsusb_urb_t* %45)
  %47 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %48 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %53 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %56 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %57 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %5, align 8
  %62 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32 @usb_submit_urb(%struct.TYPE_4__* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %26, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_5__* @smscore_getbuffer(i32) #1

declare dso_local i32 @sms_err(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.smsusb_urb_t*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
