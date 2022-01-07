; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@mdio_bus_type = common dso_local global i32 0, align 4
@of_phy_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = load i32, i32* @of_phy_match, align 4
  %11 = call %struct.device* @bus_find_device(i32* @mdio_bus_type, i32* null, %struct.device_node* %9, i32 %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.phy_device* @to_phy_device(%struct.device* %15)
  br label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %struct.phy_device* [ %16, %14 ], [ null, %17 ]
  store %struct.phy_device* %19, %struct.phy_device** %2, align 8
  br label %20

20:                                               ; preds = %18, %7
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  ret %struct.phy_device* %21
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.device_node*, i32) #1

declare dso_local %struct.phy_device* @to_phy_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
