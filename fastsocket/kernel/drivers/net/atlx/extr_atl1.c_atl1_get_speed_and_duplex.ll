; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_get_speed_and_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_get_speed_and_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { %struct.atl1_adapter* }
%struct.atl1_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MII_ATLX_PSSR = common dso_local global i32 0, align 4
@MII_ATLX_PSSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@ATLX_ERR_PHY_RES = common dso_local global i64 0, align 8
@MII_ATLX_PSSR_SPEED = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error getting speed\0A\00", align 1
@ATLX_ERR_PHY_SPEED = common dso_local global i64 0, align 8
@MII_ATLX_PSSR_DPLX = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_hw*, i32*, i32*)* @atl1_get_speed_and_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_get_speed_and_duplex(%struct.atl1_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.atl1_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.atl1_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %13 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %12, i32 0, i32 0
  %14 = load %struct.atl1_adapter*, %struct.atl1_adapter** %13, align 8
  %15 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %18 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %17, i32 0, i32 0
  %19 = load %struct.atl1_adapter*, %struct.atl1_adapter** %18, align 8
  store %struct.atl1_adapter* %19, %struct.atl1_adapter** %9, align 8
  %20 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %21 = load i32, i32* @MII_ATLX_PSSR, align 4
  %22 = call i64 @atl1_read_phy_reg(%struct.atl1_hw* %20, i32 %21, i32* %11)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %4, align 8
  br label %69

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MII_ATLX_PSSR_SPD_DPLX_RESOLVED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @ATLX_ERR_PHY_RES, align 8
  store i64 %33, i64* %4, align 8
  br label %69

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MII_ATLX_PSSR_SPEED, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %47 [
    i32 130, label %38
    i32 129, label %41
    i32 128, label %44
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @SPEED_1000, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* @SPEED_100, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load i32, i32* @SPEED_10, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.atl1_adapter*, %struct.atl1_adapter** %9, align 8
  %49 = call i32 @netif_msg_hw(%struct.atl1_adapter* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* @ATLX_ERR_PHY_SPEED, align 8
  store i64 %56, i64* %4, align 8
  br label %69

57:                                               ; preds = %44, %41, %38
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MII_ATLX_PSSR_DPLX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @FULL_DUPLEX, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @HALF_DUPLEX, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  store i64 0, i64* %4, align 8
  br label %69

69:                                               ; preds = %68, %55, %32, %25
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @atl1_read_phy_reg(%struct.atl1_hw*, i32, i32*) #1

declare dso_local i32 @netif_msg_hw(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
