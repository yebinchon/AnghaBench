; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_resubmit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_resubmit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@KAWETH_BUF_SIZE = common dso_local global i32 0, align 4
@kaweth_usb_receive = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"resubmitting rx_urb %d failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i32)* @kaweth_resubmit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %0, i32 %1) #0 {
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %7 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %10 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %13 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @usb_rcvbulkpipe(i32 %14, i32 1)
  %16 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %17 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %20 = load i32, i32* @kaweth_usb_receive, align 4
  %21 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %22 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %8, i32 %11, i32 %15, i32 %18, i32 %19, i32 %20, %struct.kaweth_device* %21)
  %23 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %24 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %25 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %34 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %38 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @usb_submit_urb(%struct.TYPE_3__* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %50 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %52 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %51, i32 0, i32 1
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 4
  %55 = call i32 @schedule_delayed_work(i32* %52, i32 %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %62

59:                                               ; preds = %2
  %60 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %61 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.kaweth_device*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
