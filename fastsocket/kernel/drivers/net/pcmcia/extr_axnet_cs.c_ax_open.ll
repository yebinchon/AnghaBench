; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_ax_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_ax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ei_device = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @netdev_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.ei_device*
  store %struct.ei_device* %7, %struct.ei_device** %4, align 8
  %8 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %9 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @AX88190_init(%struct.net_device* %12, i32 1)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_start_queue(%struct.net_device* %14)
  %16 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %17 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %16, i32 0, i32 1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret i32 0
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @AX88190_init(%struct.net_device*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
