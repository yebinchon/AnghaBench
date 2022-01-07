; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_firmware_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt2025c_firmware_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.qt202x_phy_data* }
%struct.qt202x_phy_data = type { i32 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@PCS_FW_PRODUCT_CODE_1 = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"QT2025C firmware %xr%d v%d.%d.%d.%d [20%02d-%02d-%02d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @qt2025c_firmware_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qt2025c_firmware_id(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.qt202x_phy_data*, align 8
  %4 = alloca [9 x i32], align 16
  %5 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 1
  %8 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %7, align 8
  store %struct.qt202x_phy_data* %8, %struct.qt202x_phy_data** %3, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 36
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %14 = load i32, i32* @MDIO_MMD_PCS, align 4
  %15 = load i64, i64* @PCS_FW_PRODUCT_CODE_1, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @efx_mdio_read(%struct.efx_nic* %13, i32 %14, i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %19
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 4
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  %45 = load i32, i32* %44, align 16
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 6
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 7
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8
  %53 = load i32, i32* %52, align 16
  %54 = call i32 @netif_info(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %40, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53)
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 240
  %58 = shl i32 %57, 20
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = shl i32 %61, 16
  %63 = or i32 %58, %62
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  %65 = load i32, i32* %64, align 16
  %66 = shl i32 %65, 8
  %67 = or i32 %63, %66
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  %71 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %3, align 8
  %72 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i64) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
