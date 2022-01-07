; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_interrupt_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_interrupt_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, i64 }
%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }

@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rt2x00usb_interrupt_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00usb_interrupt_rxdone(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rt2x00_dev*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.queue_entry*
  store %struct.queue_entry* %8, %struct.queue_entry** %3, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %15 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %16 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %15, i32 0, i32 0
  %17 = call i32 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %21)
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %27 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %20
  %38 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %39 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %40 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %42, %19
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmadone(%struct.queue_entry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
