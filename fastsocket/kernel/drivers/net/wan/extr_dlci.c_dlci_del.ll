; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dlci.c_dlci_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dlci.c_dlci_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlci_add = type { i32 }
%struct.dlci_local = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.frad_local = type { i32 (%struct.net_device*, %struct.net_device*)* }

@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlci_add*)* @dlci_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlci_del(%struct.dlci_add* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlci_add*, align 8
  %4 = alloca %struct.dlci_local*, align 8
  %5 = alloca %struct.frad_local*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.dlci_add* %0, %struct.dlci_add** %3, align 8
  %9 = load %struct.dlci_add*, %struct.dlci_add** %3, align 8
  %10 = getelementptr inbounds %struct.dlci_add, %struct.dlci_add* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i32 %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i64 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i8* @netdev_priv(%struct.net_device* %26)
  %28 = bitcast i8* %27 to %struct.dlci_local*
  store %struct.dlci_local* %28, %struct.dlci_local** %4, align 8
  %29 = load %struct.dlci_local*, %struct.dlci_local** %4, align 8
  %30 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %29, i32 0, i32 1
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i8* @netdev_priv(%struct.net_device* %32)
  %34 = bitcast i8* %33 to %struct.frad_local*
  store %struct.frad_local* %34, %struct.frad_local** %5, align 8
  %35 = call i32 (...) @rtnl_lock()
  %36 = load %struct.frad_local*, %struct.frad_local** %5, align 8
  %37 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 %38(%struct.net_device* %39, %struct.net_device* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %25
  %45 = load %struct.dlci_local*, %struct.dlci_local** %4, align 8
  %46 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @unregister_netdevice(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = call i32 @dev_put(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %44, %25
  %53 = call i32 (...) @rtnl_unlock()
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %22, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
