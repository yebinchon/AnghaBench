; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_phy_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_qt202x_phy.c_qt202x_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__, i32, %struct.qt202x_phy_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qt202x_phy_data = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QT202X_REQUIRED_DEVS = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@QT202X_LOOPBACKS = common dso_local global i32 0, align 4
@FALCON_XMAC_LOOPBACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @qt202x_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt202x_phy_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.qt202x_phy_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.qt202x_phy_data* @kzalloc(i32 24, i32 %5)
  store %struct.qt202x_phy_data* %6, %struct.qt202x_phy_data** %4, align 8
  %7 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %8 = icmp ne %struct.qt202x_phy_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 3
  store %struct.qt202x_phy_data* %13, %struct.qt202x_phy_data** %15, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %20 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %22 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %24 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @QT202X_REQUIRED_DEVS, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %30 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @QT202X_LOOPBACKS, align 4
  %36 = load i32, i32* @FALCON_XMAC_LOOPBACKS, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %12, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.qt202x_phy_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
