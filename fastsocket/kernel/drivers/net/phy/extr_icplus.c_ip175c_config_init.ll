; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_icplus.c_ip175c_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_icplus.c_ip175c_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)* }

@ip175c_config_init.full_reset_performed = internal global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@PHY_RUNNING = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip175c_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @ip175c_config_init.full_reset_performed, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %106

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 6
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %12, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 6
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 %13(%struct.TYPE_7__* %16, i32 30, i32 0, i32 5980)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %8
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %26, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 6
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 %27(%struct.TYPE_7__* %30, i32 30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = call i32 @mdelay(i32 2)
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 6
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %36, align 8
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_7__* %40, i32 29, i32 31, i32 5980)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %22
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %128

46:                                               ; preds = %22
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %50, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 6
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 %51(%struct.TYPE_7__* %54, i32 29, i32 22, i32 1056)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %128

60:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 5
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %68, align 8
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 6
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MII_BMCR, align 4
  %75 = load i32, i32* @BMCR_RESET, align 4
  %76 = call i32 %69(%struct.TYPE_7__* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %128

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %61

85:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 5
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 6
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %93, align 8
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 6
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MII_BMCR, align 4
  %100 = call i32 %94(%struct.TYPE_7__* %97, i32 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %86

104:                                              ; preds = %86
  %105 = call i32 @mdelay(i32 2)
  store i32 1, i32* @ip175c_config_init.full_reset_performed, align 4
  br label %106

106:                                              ; preds = %104, %1
  %107 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %108 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 4
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load i32, i32* @PHY_RUNNING, align 4
  %113 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %114 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SPEED_100, align 4
  %116 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @DUPLEX_FULL, align 4
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %122 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %124 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @netif_carrier_on(i32 %125)
  br label %127

127:                                              ; preds = %111, %106
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %79, %58, %44, %20
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
