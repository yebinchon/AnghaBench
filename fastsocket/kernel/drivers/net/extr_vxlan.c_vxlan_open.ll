; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.vxlan_dev = type { i32, i64, i32, %struct.TYPE_2__, %struct.vxlan_sock* }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_sock = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@vxlan_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FDB_AGE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vxlan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vxlan_net*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @dev_net(%struct.net_device* %7)
  %9 = load i32, i32* @vxlan_net_id, align 4
  %10 = call %struct.vxlan_net* @net_generic(i32 %8, i32 %9)
  store %struct.vxlan_net* %10, %struct.vxlan_net** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.vxlan_dev* %12, %struct.vxlan_dev** %5, align 8
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %14 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %13, i32 0, i32 4
  %15 = load %struct.vxlan_sock*, %struct.vxlan_sock** %14, align 8
  store %struct.vxlan_sock* %15, %struct.vxlan_sock** %6, align 8
  %16 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  %17 = icmp ne %struct.vxlan_sock* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = call i64 @IN_MULTICAST(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.vxlan_net*, %struct.vxlan_net** %4, align 8
  %31 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %32 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @vxlan_group_used(%struct.vxlan_net* %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  %39 = call i32 @vxlan_sock_hold(%struct.vxlan_sock* %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @dev_hold(%struct.net_device* %40)
  %42 = load i32, i32* @vxlan_wq, align 4
  %43 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %44 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %43, i32 0, i32 2
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %37, %29, %21
  %47 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %48 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %53 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %52, i32 0, i32 0
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @FDB_AGE_INTERVAL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @mod_timer(i32* %53, i64 %56)
  br label %58

58:                                               ; preds = %51, %46
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @vxlan_group_used(%struct.vxlan_net*, i32) #1

declare dso_local i32 @vxlan_sock_hold(%struct.vxlan_sock*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
