; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_flush_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_flush_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_2__*, i32, %struct.queue_entry_priv_usb_bcn* }
%struct.TYPE_2__ = type { i64, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry_priv_usb_bcn = type { i32, i32 }
%struct.queue_entry_priv_usb = type { i32, i32 }

@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@QID_BEACON = common dso_local global i64 0, align 8
@REQUIRE_BEACON_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i8*)* @rt2x00usb_flush_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_flush_entry(%struct.queue_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.queue_entry_priv_usb*, align 8
  %8 = alloca %struct.queue_entry_priv_usb_bcn*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %6, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 2
  %16 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %15, align 8
  %17 = bitcast %struct.queue_entry_priv_usb_bcn* %16 to %struct.queue_entry_priv_usb*
  store %struct.queue_entry_priv_usb* %17, %struct.queue_entry_priv_usb** %7, align 8
  %18 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %19 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %18, i32 0, i32 2
  %20 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %19, align 8
  store %struct.queue_entry_priv_usb_bcn* %20, %struct.queue_entry_priv_usb_bcn** %8, align 8
  %21 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %22 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %23 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %7, align 8
  %29 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_kill_urb(i32 %30)
  %32 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %33 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QID_BEACON, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load i32, i32* @REQUIRE_BEACON_GUARD, align 4
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %8, align 8
  %47 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_kill_urb(i32 %48)
  br label %50

50:                                               ; preds = %45, %39, %27
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
