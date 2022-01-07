; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_beacondone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_beacondone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64 }
%struct.queue_entry = type { i32*, %struct.TYPE_4__*, %struct.queue_entry_priv_usb_bcn* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.queue_entry_priv_usb_bcn = type { %struct.urb*, %struct.urb* }

@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rt2500usb_beacondone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_beacondone(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.queue_entry_priv_usb_bcn*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.queue_entry*
  store %struct.queue_entry* %8, %struct.queue_entry** %3, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 2
  %11 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %10, align 8
  store %struct.queue_entry_priv_usb_bcn* %11, %struct.queue_entry_priv_usb_bcn** %4, align 8
  %12 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %12, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %4, align 8
  %24 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %23, i32 0, i32 1
  %25 = load %struct.urb*, %struct.urb** %24, align 8
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = icmp eq %struct.urb* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %4, align 8
  %30 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %29, i32 0, i32 0
  %31 = load %struct.urb*, %struct.urb** %30, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @usb_submit_urb(%struct.urb* %31, i32 %32)
  br label %48

34:                                               ; preds = %22
  %35 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %4, align 8
  %36 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %35, i32 0, i32 0
  %37 = load %struct.urb*, %struct.urb** %36, align 8
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = icmp eq %struct.urb* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %42 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dev_kfree_skb(i32* %43)
  %45 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %46 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %34
  br label %48

48:                                               ; preds = %21, %47, %28
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
