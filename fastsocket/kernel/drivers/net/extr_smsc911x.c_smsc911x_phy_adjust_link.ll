; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i64, i32, i32, i32, i32, i32, %struct.phy_device* }
%struct.phy_device = type { i64 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"duplex state has changed\00", align 1
@MAC_CR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"configuring for full duplex mode\00", align 1
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"configuring for half duplex mode\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"carrier state has changed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"configuring for carrier OK\00", align 1
@GPIO_CFG_LED1_EN_ = common dso_local global i32 0, align 4
@GPIO_CFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"configuring for no carrier\00", align 1
@GPIO_CFG_GPIOBUF0_ = common dso_local global i32 0, align 4
@GPIO_CFG_GPIODIR0_ = common dso_local global i32 0, align 4
@GPIO_CFG_GPIOD0_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc911x_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %8)
  store %struct.smsc911x_data* %9, %struct.smsc911x_data** %3, align 8
  %10 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %11 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %10, i32 0, i32 6
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %1
  %21 = load i32, i32* @HW, align 4
  %22 = call i32 @SMSC_TRACE(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %24 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %23, i32 0, i32 5
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %28 = load i32, i32* @MAC_CR, align 4
  %29 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i32, i32* @HW, align 4
  %36 = call i32 @SMSC_TRACE(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @MAC_CR_FDPX_, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %47

40:                                               ; preds = %20
  %41 = load i32, i32* @HW, align 4
  %42 = call i32 @SMSC_TRACE(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @MAC_CR_FDPX_, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %49 = load i32, i32* @MAC_CR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %48, i32 %49, i32 %50)
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %53 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %52, i32 0, i32 5
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %57 = call i32 @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data* %56)
  %58 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %62 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %47, %1
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @netif_carrier_ok(%struct.net_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %68 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %154

71:                                               ; preds = %63
  %72 = load i32, i32* @HW, align 4
  %73 = call i32 @SMSC_TRACE(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %71
  %77 = load i32, i32* @HW, align 4
  %78 = call i32 @SMSC_TRACE(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %80 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %76
  %86 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %87 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %92 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %95 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %97 = load i32, i32* @GPIO_CFG, align 4
  %98 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %99 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %90, %85, %76
  br label %150

103:                                              ; preds = %71
  %104 = load i32, i32* @HW, align 4
  %105 = call i32 @SMSC_TRACE(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %107 = load i32, i32* @GPIO_CFG, align 4
  %108 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %106, i32 %107)
  %109 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %110 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %112 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %103
  %118 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %119 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %149, label %122

122:                                              ; preds = %117
  %123 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %124 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %127 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @GPIO_CFG_LED1_EN_, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %131 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* @GPIO_CFG_GPIOBUF0_, align 4
  %135 = load i32, i32* @GPIO_CFG_GPIODIR0_, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @GPIO_CFG_GPIOD0_, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %140 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %144 = load i32, i32* @GPIO_CFG, align 4
  %145 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %146 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %122, %117, %103
  br label %150

150:                                              ; preds = %149, %102
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %153 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %63
  ret void
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
