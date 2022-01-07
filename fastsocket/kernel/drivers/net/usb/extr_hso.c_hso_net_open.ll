; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hso_net = type { i32, i32, i32, i32, i64, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"No net device !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WAIT_IP = common dso_local global i32 0, align 4
@HSO_NET_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hso_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hso_net*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hso_net* @netdev_priv(%struct.net_device* %6)
  store %struct.hso_net* %7, %struct.hso_net** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %9 = icmp ne %struct.hso_net* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %18 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %20 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %19, i32 0, i32 3
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @WAIT_IP, align 4
  %24 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %25 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %27 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %29 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %31 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %30, i32 0, i32 3
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @HSO_NET_RUNNING, align 4
  %35 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %36 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %35, i32 0, i32 2
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %39 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hso_start_net_device(i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netif_start_queue(%struct.net_device* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %16, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.hso_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hso_start_net_device(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
