; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_pio }
%struct.b43_pio = type { i32 }

@rx_queue = common dso_local global i32 0, align 4
@tx_queue_mcast = common dso_local global i32 0, align 4
@tx_queue_AC_VO = common dso_local global i32 0, align 4
@tx_queue_AC_VI = common dso_local global i32 0, align 4
@tx_queue_AC_BE = common dso_local global i32 0, align 4
@tx_queue_AC_BK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_pio_free(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_pio*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = call i32 @b43_using_pio_transfers(%struct.b43_wldev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_pio* %10, %struct.b43_pio** %3, align 8
  %11 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %12 = load i32, i32* @rx_queue, align 4
  %13 = call i32 @destroy_queue_rx(%struct.b43_pio* %11, i32 %12)
  %14 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %15 = load i32, i32* @tx_queue_mcast, align 4
  %16 = call i32 @destroy_queue_tx(%struct.b43_pio* %14, i32 %15)
  %17 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %18 = load i32, i32* @tx_queue_AC_VO, align 4
  %19 = call i32 @destroy_queue_tx(%struct.b43_pio* %17, i32 %18)
  %20 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %21 = load i32, i32* @tx_queue_AC_VI, align 4
  %22 = call i32 @destroy_queue_tx(%struct.b43_pio* %20, i32 %21)
  %23 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %24 = load i32, i32* @tx_queue_AC_BE, align 4
  %25 = call i32 @destroy_queue_tx(%struct.b43_pio* %23, i32 %24)
  %26 = load %struct.b43_pio*, %struct.b43_pio** %3, align 8
  %27 = load i32, i32* @tx_queue_AC_BK, align 4
  %28 = call i32 @destroy_queue_tx(%struct.b43_pio* %26, i32 %27)
  br label %29

29:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @b43_using_pio_transfers(%struct.b43_wldev*) #1

declare dso_local i32 @destroy_queue_rx(%struct.b43_pio*, i32) #1

declare dso_local i32 @destroy_queue_tx(%struct.b43_pio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
