; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32, i32, %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@FSL_GIANFAR_DEV_HAS_GIGABIT = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@GFAR_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %4, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FSL_GIANFAR_DEV_HAS_GIGABIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %21 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %23 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %25 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @gfar_get_interface(%struct.net_device* %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.TYPE_3__* @of_phy_connect(%struct.net_device* %28, i32 %31, i32* @adjust_link, i32 0, i64 %32)
  %34 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %35 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %34, i32 0, i32 2
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %37 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %18
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call %struct.TYPE_3__* @of_phy_connect_fixed_link(%struct.net_device* %41, i32* @adjust_link, i64 %42)
  %44 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 2
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %45, align 8
  br label %46

46:                                               ; preds = %40, %18
  %47 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %48 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %83

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @gfar_configure_serdes(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* @GFAR_SUPPORTED, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %69 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %75 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %80 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %64, %51
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @gfar_get_interface(%struct.net_device*) #1

declare dso_local %struct.TYPE_3__* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i64) #1

declare dso_local %struct.TYPE_3__* @of_phy_connect_fixed_link(%struct.net_device*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gfar_configure_serdes(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
