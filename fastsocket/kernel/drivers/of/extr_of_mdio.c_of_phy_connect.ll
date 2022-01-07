; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @of_phy_connect(%struct.net_device* %0, %struct.device_node* %1, void (%struct.net_device*)* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca void (%struct.net_device*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store void (%struct.net_device*)* %2, void (%struct.net_device*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.device_node*, %struct.device_node** %8, align 8
  %14 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %13)
  store %struct.phy_device* %14, %struct.phy_device** %12, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %16 = icmp ne %struct.phy_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.phy_device* null, %struct.phy_device** %6, align 8
  br label %31

18:                                               ; preds = %5
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %21 = load void (%struct.net_device*)*, void (%struct.net_device*)** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @phy_connect_direct(%struct.net_device* %19, %struct.phy_device* %20, void (%struct.net_device*)* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %18
  %28 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi %struct.phy_device* [ null, %26 ], [ %28, %27 ]
  store %struct.phy_device* %30, %struct.phy_device** %6, align 8
  br label %31

31:                                               ; preds = %29, %17
  %32 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  ret %struct.phy_device* %32
}

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i64 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, void (%struct.net_device*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
