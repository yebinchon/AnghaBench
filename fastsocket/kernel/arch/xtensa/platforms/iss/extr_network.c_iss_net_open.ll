; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_iss_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iss_net_private = type { i32, i64, %struct.TYPE_5__, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.iss_net_private.0*)* }
%struct.iss_net_private.0 = type opaque

@opened_lock = common dso_local global i32 0, align 4
@opened = common dso_local global i32 0, align 4
@ISS_NET_TIMER_VALUE = common dso_local global i64 0, align 8
@iss_net_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iss_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_net_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.iss_net_private*, align 8
  %4 = alloca [17 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.iss_net_private* @netdev_priv(%struct.net_device* %6)
  store %struct.iss_net_private* %7, %struct.iss_net_private** %3, align 8
  %8 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %9 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %12 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.iss_net_private.0*)*, i32 (%struct.iss_net_private.0*)** %13, align 8
  %15 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %16 = bitcast %struct.iss_net_private* %15 to %struct.iss_net_private.0*
  %17 = call i32 %14(%struct.iss_net_private.0* %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %75

20:                                               ; preds = %1
  %21 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %22 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %28 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %29 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = call i32 @dev_ip_addr(%struct.net_device* %26, i8* %27, i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %35 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @set_ether_mac(%struct.net_device* %33, i32* %36)
  br label %38

38:                                               ; preds = %25, %20
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @netif_start_queue(%struct.net_device* %39)
  br label %41

41:                                               ; preds = %45, %38
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @iss_net_rx(%struct.net_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %41

46:                                               ; preds = %41
  %47 = call i32 @spin_lock(i32* @opened_lock)
  %48 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %49 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %48, i32 0, i32 3
  %50 = call i32 @list_add(i32* %49, i32* @opened)
  %51 = call i32 @spin_unlock(i32* @opened_lock)
  %52 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %53 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %52, i32 0, i32 2
  %54 = call i32 @init_timer(%struct.TYPE_5__* %53)
  %55 = load i64, i64* @ISS_NET_TIMER_VALUE, align 8
  %56 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %57 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %59 = ptrtoint %struct.iss_net_private* %58 to i64
  %60 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %61 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @iss_net_timer, align 4
  %64 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %65 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %68 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %67, i32 0, i32 2
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %71 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @mod_timer(%struct.TYPE_5__* %68, i64 %73)
  br label %75

75:                                               ; preds = %46, %19
  %76 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %77 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.iss_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_ip_addr(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @set_ether_mac(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @iss_net_rx(%struct.net_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
