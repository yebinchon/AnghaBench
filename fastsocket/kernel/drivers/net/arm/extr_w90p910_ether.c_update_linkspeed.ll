; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_update_linkspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_update_linkspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w90p910_ether = type { i32, %struct.TYPE_2__, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: Link down.\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: Link now %i-%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FullDuplex\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HalfDuplex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @update_linkspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_linkspeed(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w90p910_ether*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %10)
  store %struct.w90p910_ether* %11, %struct.w90p910_ether** %3, align 8
  %12 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %13 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %12, i32 0, i32 2
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %4, align 8
  %15 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %16 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %15, i32 0, i32 1
  %17 = call i32 @mii_link_ok(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %21 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_carrier_off(%struct.net_device* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %139

30:                                               ; preds = %1
  %31 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %32 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %139

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %39 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MII_BMSR, align 4
  %43 = call i32 @w90p910_mdio_read(%struct.net_device* %37, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %46 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MII_BMCR, align 4
  %50 = call i32 @w90p910_mdio_read(%struct.net_device* %44, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BMCR_ANENABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %139

61:                                               ; preds = %55
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %64 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MII_LPA, align 4
  %68 = call i32 @w90p910_mdio_read(%struct.net_device* %62, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @LPA_100FULL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @LPA_100HALF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %61
  %79 = load i32, i32* @SPEED_100, align 4
  store i32 %79, i32* %8, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @SPEED_10, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @LPA_100FULL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @LPA_10FULL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %93, i32* %9, align 4
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %118

97:                                               ; preds = %36
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @BMCR_SPEED100, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @SPEED_100, align 4
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @SPEED_10, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @BMCR_FULLDPLX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @DUPLEX_FULL, align 4
  br label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @DUPLEX_HALF, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %116, %96
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @update_linkspeed_register(%struct.net_device* %119, i32 %120, i32 %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @DUPLEX_FULL, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128, i8* %133)
  %135 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %136 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = call i32 @netif_carrier_on(%struct.net_device* %137)
  br label %139

139:                                              ; preds = %118, %60, %35, %19
  ret void
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_link_ok(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @w90p910_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @update_linkspeed_register(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
