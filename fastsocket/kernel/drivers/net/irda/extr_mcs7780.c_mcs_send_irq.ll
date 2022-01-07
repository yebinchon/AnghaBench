; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_send_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_send_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.mcs_cb* }
%struct.mcs_cb = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mcs_send_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_send_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.mcs_cb*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load %struct.mcs_cb*, %struct.mcs_cb** %6, align 8
  store %struct.mcs_cb* %7, %struct.mcs_cb** %3, align 8
  %8 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %9 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %12 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %18 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netif_wake_queue(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
