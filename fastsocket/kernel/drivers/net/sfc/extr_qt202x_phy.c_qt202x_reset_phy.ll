; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_reset_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }

@PHY_TYPE_QT2025C = common dso_local global i64 0, align 8
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@QT2022C2_MAX_RESET_TIME = common dso_local global i32 0, align 4
@QT2022C2_RESET_WAIT = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PHY reset timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @qt202x_reset_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt202x_reset_phy(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_TYPE_QT2025C, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @qt2025c_wait_reset(%struct.efx_nic* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %39

16:                                               ; preds = %10
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %20 = load i32, i32* @QT2022C2_MAX_RESET_TIME, align 4
  %21 = load i32, i32* @QT2022C2_RESET_WAIT, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* @QT2022C2_RESET_WAIT, align 4
  %24 = call i32 @efx_mdio_reset_mmd(%struct.efx_nic* %18, i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %39

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %16
  %30 = call i32 @msleep(i32 250)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = call %struct.TYPE_4__* @falcon_board(%struct.efx_nic* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %35, align 8
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = call i32 %36(%struct.efx_nic* %37)
  store i32 0, i32* %2, align 4
  br label %47

39:                                               ; preds = %27, %15
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = load i32, i32* @hw, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_err(%struct.efx_nic* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @qt2025c_wait_reset(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_reset_mmd(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.TYPE_4__* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
