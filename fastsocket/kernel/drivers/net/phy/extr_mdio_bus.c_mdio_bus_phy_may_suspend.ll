; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdio_bus_phy_may_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdio_bus_phy_may_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.net_device*, %struct.TYPE_3__ }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.device_driver* }
%struct.device_driver = type { i32 }
%struct.phy_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mdio_bus_phy_may_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_bus_phy_may_suspend(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.phy_driver*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_driver*, %struct.device_driver** %9, align 8
  store %struct.device_driver* %10, %struct.device_driver** %4, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %12 = call %struct.phy_driver* @to_phy_driver(%struct.device_driver* %11)
  store %struct.phy_driver* %12, %struct.phy_driver** %5, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %17 = icmp ne %struct.device_driver* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.phy_driver*, %struct.phy_driver** %5, align 8
  %20 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %49

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i64 @device_may_wakeup(%struct.TYPE_4__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %49

42:                                               ; preds = %34, %28
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = call i64 @device_may_wakeup(%struct.TYPE_4__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %41, %27, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.phy_driver* @to_phy_driver(%struct.device_driver*) #1

declare dso_local i64 @device_may_wakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
