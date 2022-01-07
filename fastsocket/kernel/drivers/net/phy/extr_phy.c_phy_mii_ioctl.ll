; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.phy_device*)* }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_mii_ioctl(%struct.phy_device* %0, %struct.mii_ioctl_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.mii_ioctl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store %struct.mii_ioctl_data* %1, %struct.mii_ioctl_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %10 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %142 [
    i32 130, label %13
    i32 129, label %19
    i32 128, label %27
  ]

13:                                               ; preds = %3
  %14 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %18 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %3, %13
  %20 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @phy_read(%struct.phy_device* %20, i32 %23)
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %145

27:                                               ; preds = %3
  %28 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %29 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %27
  %36 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %37 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %106 [
    i32 131, label %39
    i32 132, label %102
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BMCR_RESET, align 4
  %42 = load i32, i32* @BMCR_ANENABLE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @AUTONEG_DISABLE, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @AUTONEG_ENABLE, align 4
  %52 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @BMCR_FULLDPLX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @DUPLEX_FULL, align 4
  %66 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %72

68:                                               ; preds = %59, %54
  %69 = load i32, i32* @DUPLEX_HALF, align 4
  %70 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BMCR_SPEED1000, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @SPEED_1000, align 4
  %84 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %101

86:                                               ; preds = %77, %72
  %87 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BMCR_SPEED100, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @SPEED_100, align 4
  %98 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %91, %86
  br label %101

101:                                              ; preds = %100, %82
  br label %107

102:                                              ; preds = %35
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %107

106:                                              ; preds = %35
  br label %107

107:                                              ; preds = %106, %102, %101
  br label %108

108:                                              ; preds = %107, %27
  %109 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %110 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %111 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @phy_write(%struct.phy_device* %109, i32 %112, i32 %113)
  %115 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %116 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 131
  br i1 %118, label %119, label %141

119:                                              ; preds = %108
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @BMCR_RESET, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %126 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %128, align 8
  %130 = icmp ne i32 (%struct.phy_device*)* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %133 = call i32 @phy_scan_fixups(%struct.phy_device* %132)
  %134 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %135 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %137, align 8
  %139 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %140 = call i32 %138(%struct.phy_device* %139)
  br label %141

141:                                              ; preds = %131, %124, %119, %108
  br label %145

142:                                              ; preds = %3
  %143 = load i32, i32* @EOPNOTSUPP, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %146

145:                                              ; preds = %141, %19
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_scan_fixups(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
