; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_usb_start_wait_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_usb_start_wait_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, %struct.usb_api_data* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_api_data = type { i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usb_control/bulk_msg: timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32, i32*)* @usb_start_wait_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_start_wait_urb(%struct.urb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_api_data, align 8
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = getelementptr inbounds %struct.usb_api_data, %struct.usb_api_data* %8, i32 0, i32 1
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = getelementptr inbounds %struct.usb_api_data, %struct.usb_api_data* %8, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  store %struct.usb_api_data* %8, %struct.usb_api_data** %14, align 8
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call i32 @usb_submit_urb(%struct.urb* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = call i32 @usb_free_urb(%struct.urb* %21)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.usb_api_data, %struct.usb_api_data* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.usb_api_data, %struct.usb_api_data* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @wait_event_timeout(i32 %26, i64 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = call i32 @usb_kill_urb(%struct.urb* %38)
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
