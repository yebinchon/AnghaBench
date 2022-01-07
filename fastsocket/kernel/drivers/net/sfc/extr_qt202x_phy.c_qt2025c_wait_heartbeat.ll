; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_wait_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_wait_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@QT2025C_MAX_HEARTB_TIME = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@PCS_FW_HEARTBEAT_REG = common dso_local global i32 0, align 4
@PCS_FW_HEARTB_LBN = common dso_local global i32 0, align 4
@PCS_FW_HEARTB_WIDTH = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"If an SFP+ direct attach cable is connected, please check that it complies with the SFP+ specification\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QT2025C_HEARTB_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @qt2025c_wait_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2025c_wait_heartbeat(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @QT2025C_MAX_HEARTB_TIME, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* @MDIO_MMD_PCS, align 4
  %14 = load i32, i32* @PCS_FW_HEARTBEAT_REG, align 4
  %15 = call i32 @efx_mdio_read(%struct.efx_nic* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PCS_FW_HEARTB_LBN, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @PCS_FW_HEARTB_WIDTH, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %55

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @time_after(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = load i32, i32* @hw, align 4
  %46 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netif_err(%struct.efx_nic* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load i32, i32* @QT2025C_HEARTB_WAIT, align 4
  %54 = call i32 @msleep(i32 %53)
  br label %11

55:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %43, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
