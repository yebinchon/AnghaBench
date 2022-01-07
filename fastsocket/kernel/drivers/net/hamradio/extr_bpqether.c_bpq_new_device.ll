; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpqdev = type { i32, i32, i32, %struct.net_device*, %struct.net_device* }

@.str = private unnamed_addr constant [6 x i8] c"bpq%d\00", align 1
@bpq_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcast_addr = common dso_local global i32 0, align 4
@bpq_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bpq_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_new_device(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bpqdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load i32, i32* @bpq_setup, align 4
  %8 = call %struct.net_device* @alloc_netdev(i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %15)
  store %struct.bpqdev* %16, %struct.bpqdev** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @dev_hold(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %21 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %20, i32 0, i32 4
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %24 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %23, i32 0, i32 3
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %26 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @bcast_addr, align 4
  %29 = call i32 @memcpy(i32 %27, i32 %28, i32 4)
  %30 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %31 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @bcast_addr, align 4
  %34 = call i32 @memcpy(i32 %32, i32 %33, i32 4)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_alloc_name(%struct.net_device* %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %14
  br label %55

43:                                               ; preds = %14
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @register_netdevice(%struct.net_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %55

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @bpq_set_lockdep_class(%struct.net_device* %50)
  %52 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %53 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %52, i32 0, i32 0
  %54 = call i32 @list_add_rcu(i32* %53, i32* @bpq_devices)
  store i32 0, i32* %2, align 4
  br label %61

55:                                               ; preds = %48, %42
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @dev_put(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %49, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @bpq_set_lockdep_class(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
