; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_phy_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@mdio_bus_type = common dso_local global %struct.bus_type zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"PHY %s not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @phy_attach(%struct.net_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bus_type*, align 8
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.bus_type* @mdio_bus_type, %struct.bus_type** %10, align 8
  %14 = load %struct.bus_type*, %struct.bus_type** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %14, i32* null, i8* %15)
  store %struct.device* %16, %struct.device** %12, align 8
  %17 = load %struct.device*, %struct.device** %12, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.phy_device* @ERR_PTR(i32 %23)
  store %struct.phy_device* %24, %struct.phy_device** %5, align 8
  br label %40

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %12, align 8
  %27 = call %struct.phy_device* @to_phy_device(%struct.device* %26)
  store %struct.phy_device* %27, %struct.phy_device** %11, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @phy_attach_direct(%struct.net_device* %28, %struct.phy_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.phy_device* @ERR_PTR(i32 %36)
  store %struct.phy_device* %37, %struct.phy_device** %5, align 8
  br label %40

38:                                               ; preds = %25
  %39 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %39, %struct.phy_device** %5, align 8
  br label %40

40:                                               ; preds = %38, %35, %19
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  ret %struct.phy_device* %41
}

declare dso_local %struct.device* @bus_find_device_by_name(%struct.bus_type*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

declare dso_local %struct.phy_device* @to_phy_device(%struct.device*) #1

declare dso_local i32 @phy_attach_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
