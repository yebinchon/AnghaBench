; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_lapbether.c_lapbeth_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_lapbether.c_lapbeth_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapbethdev = type { i32, %struct.net_device*, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lapb%d\00", align 1
@lapbeth_setup = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@lapbeth_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lapbeth_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapbeth_new_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lapbethdev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load i32, i32* @lapbeth_setup, align 4
  %10 = call %struct.net_device* @alloc_netdev(i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.lapbethdev* @netdev_priv(%struct.net_device* %15)
  store %struct.lapbethdev* %16, %struct.lapbethdev** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %19 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %18, i32 0, i32 2
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @dev_hold(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %24 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %23, i32 0, i32 1
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_alloc_name(%struct.net_device* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %46

33:                                               ; preds = %14
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i64 @register_netdevice(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %42 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %41, i32 0, i32 0
  %43 = call i32 @list_add_rcu(i32* %42, i32* @lapbeth_devices)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %46, %40, %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45

46:                                               ; preds = %39, %32
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @dev_put(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  %51 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %52 = call i32 @kfree(%struct.lapbethdev* %51)
  br label %44
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local %struct.lapbethdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.lapbethdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
