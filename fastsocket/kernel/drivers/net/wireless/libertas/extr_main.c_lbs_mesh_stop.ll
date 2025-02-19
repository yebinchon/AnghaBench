; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_mesh_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_mesh_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32, i32, i64 }

@LBS_DEB_MESH = common dso_local global i32 0, align 4
@LBS_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lbs_mesh_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_mesh_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  store %struct.lbs_private* %6, %struct.lbs_private** %3, align 8
  %7 = load i32, i32* @LBS_DEB_MESH, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @LBS_DISCONNECTED, align 4
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_carrier_off(%struct.net_device* %19)
  %21 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 0
  %26 = call i32 @schedule_work(i32* %25)
  %27 = load i32, i32* @LBS_DEB_MESH, align 4
  %28 = call i32 @lbs_deb_leave(i32 %27)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
