; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iss_net_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.iss_net_private.0*)* }
%struct.iss_net_private.0 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"iss_net_close!\0A\00", align 1
@opened_lock = common dso_local global i32 0, align 4
@opened = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iss_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.iss_net_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.iss_net_private* @netdev_priv(%struct.net_device* %4)
  store %struct.iss_net_private* %5, %struct.iss_net_private** %3, align 8
  %6 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %10 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = call i32 @spin_lock(i32* @opened_lock)
  %13 = call i32 @list_del(i32* @opened)
  %14 = call i32 @spin_unlock(i32* @opened_lock)
  %15 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %16 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %15, i32 0, i32 2
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %19 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.iss_net_private.0*)*, i32 (%struct.iss_net_private.0*)** %20, align 8
  %22 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %23 = bitcast %struct.iss_net_private* %22 to %struct.iss_net_private.0*
  %24 = call i32 %21(%struct.iss_net_private.0* %23)
  %25 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %26 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret i32 0
}

declare dso_local %struct.iss_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
