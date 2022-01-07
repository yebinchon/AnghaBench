; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_receive_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_receive_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4
@mcs_receive_irq = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcs_cb*)* @mcs_receive_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_receive_start(%struct.mcs_cb* %0) #0 {
  %2 = alloca %struct.mcs_cb*, align 8
  store %struct.mcs_cb* %0, %struct.mcs_cb** %2, align 8
  %3 = load i32, i32* @FALSE, align 4
  %4 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %5 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @OUTSIDE_FRAME, align 4
  %8 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %9 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %12 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %15 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %18 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %21 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_rcvbulkpipe(i32 %19, i32 %22)
  %24 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %25 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @mcs_receive_irq, align 4
  %28 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %29 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %13, i32 %16, i32 %23, i32 %26, i32 4096, i32 %27, %struct.mcs_cb* %28)
  %30 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %31 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.mcs_cb*, %struct.mcs_cb** %2, align 8
  %35 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @usb_submit_urb(%struct.TYPE_5__* %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.mcs_cb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
