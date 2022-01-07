; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i64, i32, %struct.phy_device* }
%struct.phy_device = type { i64 }

@MAC_CR = common dso_local global i32 0, align 4
@LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"full duplex mode\00", align 1
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"half duplex mode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"carrier OK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no carrier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_phy_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc9420_pdata* %8, %struct.smsc9420_pdata** %3, align 8
  %9 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %10 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %9, i32 0, i32 2
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %21 = load i32, i32* @MAC_CR, align 4
  %22 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @LINK, align 4
  %29 = call i32 @smsc_dbg(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @MAC_CR_FDPX_, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load i32, i32* @LINK, align 4
  %35 = call i32 @smsc_dbg(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @MAC_CR_FDPX_, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %42 = load i32, i32* @MAC_CR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %41, i32 %42, i32 %43)
  %45 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %46 = call i32 @smsc9420_phy_update_flowcontrol(%struct.smsc9420_pdata* %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %51 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %40, %1
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @netif_carrier_ok(%struct.net_device* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @LINK, align 4
  %65 = call i32 @smsc_dbg(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @LINK, align 4
  %68 = call i32 @smsc_dbg(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %72 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %52
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc_dbg(i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_phy_update_flowcontrol(%struct.smsc9420_pdata*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
