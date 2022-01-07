; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_sset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i64, i64, i32, i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_sset(%struct.phy_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %6 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %133

16:                                               ; preds = %2
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTONEG_ENABLE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AUTONEG_DISABLE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %133

38:                                               ; preds = %29, %16
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUTONEG_ENABLE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %133

52:                                               ; preds = %44, %38
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AUTONEG_DISABLE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %52
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPEED_1000, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPEED_100, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SPEED_10, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70, %64, %58
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DUPLEX_HALF, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DUPLEX_FULL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %70
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %133

91:                                               ; preds = %82, %76, %52
  %92 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* @AUTONEG_ENABLE, align 8
  %108 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %91
  %113 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %114 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %115 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %125

118:                                              ; preds = %91
  %119 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %122 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %118, %112
  %126 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %130 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %132 = call i32 @phy_start_aneg(%struct.phy_device* %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %125, %88, %49, %35, %13
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
