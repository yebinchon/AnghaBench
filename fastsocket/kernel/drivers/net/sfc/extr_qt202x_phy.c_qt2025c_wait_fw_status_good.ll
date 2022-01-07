; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_wait_fw_status_good.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_wait_fw_status_good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@QT2025C_MAX_FWSTART_TIME = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@PCS_UC8051_STATUS_REG = common dso_local global i32 0, align 4
@PCS_UC_STATUS_WIDTH = common dso_local global i32 0, align 4
@PCS_UC_STATUS_LBN = common dso_local global i32 0, align 4
@PCS_UC_STATUS_FW_SAVE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QT2025C_FWSTART_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @qt2025c_wait_fw_status_good to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2025c_wait_fw_status_good(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @QT2025C_MAX_FWSTART_TIME, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %37, %1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = load i32, i32* @MDIO_MMD_PCS, align 4
  %12 = load i32, i32* @PCS_UC8051_STATUS_REG, align 4
  %13 = call i32 @efx_mdio_read(%struct.efx_nic* %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCS_UC_STATUS_WIDTH, align 4
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @PCS_UC_STATUS_LBN, align 4
  %24 = shl i32 %22, %23
  %25 = and i32 %19, %24
  %26 = load i32, i32* @PCS_UC_STATUS_FW_SAVE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %40

29:                                               ; preds = %18
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @QT2025C_FWSTART_WAIT, align 4
  %39 = call i32 @msleep(i32 %38)
  br label %9

40:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
