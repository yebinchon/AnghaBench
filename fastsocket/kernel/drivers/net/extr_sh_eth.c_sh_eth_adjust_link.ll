; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sh_eth_private = type { i32, i64, i64, %struct.TYPE_2__*, %struct.phy_device* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.phy_device = type { i64, i32, i64 }

@PHY_DOWN = common dso_local global i64 0, align 8
@ECMR = common dso_local global i64 0, align 8
@ECMR_TXF = common dso_local global i32 0, align 4
@ECMR_DM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sh_eth_private* %8, %struct.sh_eth_private** %3, align 8
  %9 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %10 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %9, i32 0, i32 4
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PHY_DOWN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %1
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %25 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %33 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %35 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %37, align 8
  %39 = icmp ne i32 (%struct.net_device*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %42 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 %45(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %40, %28
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %54 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  %58 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %64 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %66, align 8
  %68 = icmp ne i32 (%struct.net_device*)* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %71 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 %74(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %69, %57
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %80 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PHY_DOWN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @ECMR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @ctrl_inl(i64 %87)
  %89 = load i32, i32* @ECMR_TXF, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @ECMR_DM, align 4
  %93 = or i32 %91, %92
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @ECMR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @ctrl_outl(i32 %93, i64 %96)
  store i32 1, i32* %6, align 4
  %98 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %102 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %84, %78
  br label %118

104:                                              ; preds = %1
  %105 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %106 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  store i32 1, i32* %6, align 4
  %110 = load i64, i64* @PHY_DOWN, align 8
  %111 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %112 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %114 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %116 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  br label %117

117:                                              ; preds = %109, %104
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %123 = call i32 @phy_print_status(%struct.phy_device* %122)
  br label %124

124:                                              ; preds = %121, %118
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
