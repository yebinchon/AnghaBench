; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.phy_device* }
%struct.phy_device = type { i64 }

@AFC_CFG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rx pause %s, tx pause %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"half duplex\00", align 1
@FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*)* @smsc911x_phy_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %10 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %11 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %10, i32 0, i32 1
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %3, align 8
  %13 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %14 = load i32, i32* @AFC_CFG, align 4
  %15 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DUPLEX_FULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %1
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_ADVERTISE, align 4
  %24 = call i32 @phy_read(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @MII_LPA, align 4
  %27 = call i32 @phy_read(%struct.phy_device* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mii_resolve_flowctrl_fdx(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FLOW_CTRL_RX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 -65534, i32* %5, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @FLOW_CTRL_TX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 15
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, -16
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @HW, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @FLOW_CTRL_RX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @FLOW_CTRL_TX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 (i32, i8*, ...) @SMSC_TRACE(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %61)
  br label %68

63:                                               ; preds = %1
  %64 = load i32, i32* @HW, align 4
  %65 = call i32 (i32, i8*, ...) @SMSC_TRACE(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, 15
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %48
  %69 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %70 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %74 = load i32, i32* @FLOW, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %73, i32 %74, i32 %75)
  %77 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %78 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %82 = load i32, i32* @AFC_CFG, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
