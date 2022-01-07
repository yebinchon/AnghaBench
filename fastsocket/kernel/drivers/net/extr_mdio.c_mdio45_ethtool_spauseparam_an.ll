; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_ethtool_spauseparam_an.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_ethtool_spauseparam_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32, i32 (i32, i32, i32, i32)*, i32, i32, i32 (i32, i32, i32, i32, i32)* }
%struct.ethtool_pauseparam = type { i64, i64, i64 }

@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdio45_ethtool_spauseparam_an(%struct.mdio_if_info* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.mdio_if_info*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MDIO_DEVS_AN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %17 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %16, i32 0, i32 1
  %18 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %17, align 8
  %19 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %20 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %23 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MDIO_MMD_AN, align 4
  %26 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %27 = call i32 %18(i32 %21, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %30 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %2
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @FLOW_CTRL_RX, align 4
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @FLOW_CTRL_TX, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %47, %56
  %58 = call i32 @mii_advertise_flowctrl(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %2
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %67 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %66, i32 0, i32 4
  %68 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %70 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %73 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MDIO_MMD_AN, align 4
  %76 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %68(i32 %71, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %80 = call i32 @mdio45_nway_restart(%struct.mdio_if_info* %79)
  br label %81

81:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @mdio45_nway_restart(%struct.mdio_if_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
