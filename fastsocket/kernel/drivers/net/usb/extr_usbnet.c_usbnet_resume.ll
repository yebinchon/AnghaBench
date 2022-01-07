; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.urb = type { i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4
@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@EVENT_RX_HALT = common dso_local global i32 0, align 4
@EVENT_DEVICE_REPORT_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %3, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %1
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call i32 @__usbnet_status_start_force(%struct.usbnet* %15, i32 %16)
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_irq(i32* %20)
  br label %22

22:                                               ; preds = %56, %14
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 7
  %25 = call %struct.urb* @usb_get_from_anchor(i32* %24)
  store %struct.urb* %25, %struct.urb** %5, align 8
  %26 = icmp ne %struct.urb* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.sk_buff*
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @usb_submit_urb(%struct.urb* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %38)
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = call i32 @usb_free_urb(%struct.urb* %40)
  %42 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usb_autopm_put_interface_async(i32 %44)
  br label %56

46:                                               ; preds = %27
  %47 = load i32, i32* @jiffies, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @__skb_queue_tail(%struct.TYPE_5__* %53, %struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %46, %37
  br label %22

57:                                               ; preds = %22
  %58 = call i32 (...) @smp_mb()
  %59 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %60 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %57
  %73 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %72
  %78 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i64 @netif_device_present(%struct.TYPE_4__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %85 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %84, i32 0, i32 4
  %86 = call i32 @timer_pending(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EVENT_RX_HALT, align 4
  %90 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 0
  %92 = call i64 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = load i32, i32* @GFP_NOIO, align 4
  %97 = call i32 @rx_alloc_submit(%struct.usbnet* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %88, %83, %77, %72
  %99 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %100 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %104 = call i64 @TX_QLEN(%struct.usbnet* %103)
  %105 = icmp sge i64 %102, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %98
  %107 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %108 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @netif_tx_wake_all_queues(%struct.TYPE_4__* %109)
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %113 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %112, i32 0, i32 1
  %114 = call i32 @tasklet_schedule(i32* %113)
  br label %115

115:                                              ; preds = %111, %57
  br label %116

116:                                              ; preds = %115, %1
  %117 = load i32, i32* @EVENT_DEVICE_REPORT_IDLE, align 4
  %118 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %119 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %118, i32 0, i32 0
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  ret i32 0
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @__usbnet_status_start_force(%struct.usbnet*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netif_device_present(%struct.TYPE_4__*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @rx_alloc_submit(%struct.usbnet*, i32) #1

declare dso_local i64 @TX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
