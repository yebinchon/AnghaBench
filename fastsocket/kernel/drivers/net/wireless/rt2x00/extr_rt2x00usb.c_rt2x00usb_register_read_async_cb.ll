; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.rt2x00_async_read_data* }
%struct.rt2x00_async_read_data = type { i32, i32, i64 (i32, i32, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rt2x00usb_register_read_async_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00usb_register_read_async_cb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.rt2x00_async_read_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %5, align 8
  store %struct.rt2x00_async_read_data* %6, %struct.rt2x00_async_read_data** %3, align 8
  %7 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %7, i32 0, i32 2
  %9 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %8, align 8
  %10 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = call i64 %9(i32 %12, i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i64 @usb_submit_urb(%struct.urb* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %29 = call i32 @kfree(%struct.rt2x00_async_read_data* %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %33 = call i32 @kfree(%struct.rt2x00_async_read_data* %32)
  br label %34

34:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.rt2x00_async_read_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
