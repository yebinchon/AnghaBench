; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, %struct.phy_device*, %struct.TYPE_2__* }
%struct.phy_device = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.phy_device** }

@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ethoc_mdio_poll = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ethoc_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethoc*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ethoc* @netdev_priv(%struct.net_device* %7)
  store %struct.ethoc* %8, %struct.ethoc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PHY_MAX_ADDR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %15 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.phy_device**, %struct.phy_device*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %18, i64 %20
  %22 = load %struct.phy_device*, %struct.phy_device** %21, align 8
  store %struct.phy_device* %22, %struct.phy_device** %5, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %24 = icmp ne %struct.phy_device* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %27 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %32 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %52

39:                                               ; preds = %30
  br label %47

40:                                               ; preds = %25
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %52

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %13
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %9

52:                                               ; preds = %45, %38, %9
  %53 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %54 = icmp ne %struct.phy_device* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  %65 = call i32 @dev_name(i32* %64)
  %66 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %67 = call %struct.phy_device* @phy_connect(%struct.net_device* %62, i32 %65, i32* @ethoc_mdio_poll, i32 0, i32 %66)
  store %struct.phy_device* %67, %struct.phy_device** %5, align 8
  %68 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %69 = call i64 @IS_ERR(%struct.phy_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.phy_device* %75)
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %61
  %78 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %79 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %80 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %79, i32 0, i32 1
  store %struct.phy_device* %78, %struct.phy_device** %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %71, %55
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
