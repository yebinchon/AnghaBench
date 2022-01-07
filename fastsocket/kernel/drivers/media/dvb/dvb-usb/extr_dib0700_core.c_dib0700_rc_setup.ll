; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_rc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_rc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32 }
%struct.urb = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rc usb alloc urb failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RC_MSG_SIZE_V1_20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rc kzalloc failed\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@dib0700_rc_urb_completion = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"rc submit urb failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_rc_setup(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 1
  %9 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  store %struct.dib0700_state* %9, %struct.dib0700_state** %4, align 8
  %10 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %11 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 66048
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %16)
  store %struct.urb* %17, %struct.urb** %5, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = icmp eq %struct.urb* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %15
  %25 = load i32, i32* @RC_MSG_SIZE_V1_20, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = call i32 @usb_free_urb(%struct.urb* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %69

40:                                               ; preds = %24
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_rcvbulkpipe(i32 %51, i32 1)
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @RC_MSG_SIZE_V1_20, align 4
  %57 = load i32, i32* @dib0700_rc_urb_completion, align 4
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %59 = call i32 @usb_fill_bulk_urb(%struct.urb* %45, i32 %48, i32 %52, i32* %55, i32 %56, i32 %57, %struct.dvb_usb_device* %58)
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32 @usb_submit_urb(%struct.urb* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %40
  %66 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %40
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %34, %20, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.dvb_usb_device*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
