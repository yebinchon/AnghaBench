; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_get_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_get_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ECNTRL_SGMII_MODE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@ECNTRL_TBI_MODE = common dso_local global i32 0, align 4
@ECNTRL_REDUCED_MODE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RTBI = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_TBI = common dso_local global i64 0, align 8
@ECNTRL_REDUCED_MII_MODE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@FSL_GIANFAR_DEV_HAS_GIGABIT = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @gfar_get_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfar_get_interface(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %4, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @gfar_read(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ECNTRL_SGMII_MODE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  store i64 %19, i64* %2, align 8
  br label %68

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ECNTRL_TBI_MODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ECNTRL_REDUCED_MODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @PHY_INTERFACE_MODE_RTBI, align 8
  store i64 %31, i64* %2, align 8
  br label %68

32:                                               ; preds = %25
  %33 = load i64, i64* @PHY_INTERFACE_MODE_TBI, align 8
  store i64 %33, i64* %2, align 8
  br label %68

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ECNTRL_REDUCED_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ECNTRL_REDUCED_MII_MODE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  store i64 %45, i64* %2, align 8
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %48 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  store i64 %54, i64* %2, align 8
  br label %68

55:                                               ; preds = %46
  %56 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  store i64 %56, i64* %2, align 8
  br label %68

57:                                               ; preds = %34
  %58 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %59 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FSL_GIANFAR_DEV_HAS_GIGABIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  store i64 %65, i64* %2, align 8
  br label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %64, %55, %53, %44, %32, %30, %18
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gfar_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
