; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c___orinoco_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c___orinoco_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.orinoco_private = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @__orinoco_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__orinoco_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %7)
  store %struct.orinoco_private* %8, %struct.orinoco_private** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netdev_mc_count(%struct.net_device* %23)
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %26 = call i32 @MAX_MULTICAST(%struct.orinoco_private* %25)
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %15, %1
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @netdev_mc_count(%struct.net_device* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @__orinoco_hw_set_multicast_list(%struct.orinoco_private* %33, %struct.net_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @MAX_MULTICAST(%struct.orinoco_private*) #1

declare dso_local i32 @__orinoco_hw_set_multicast_list(%struct.orinoco_private*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
