; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_special_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tenxpress.c_tenxpress_special_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@PMA_PMD_XCONTROL_REG = common dso_local global i32 0, align 4
@PMA_PMD_EXT_SSR_LBN = common dso_local global i32 0, align 4
@TENXPRESS_REQUIRED_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @tenxpress_special_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tenxpress_special_reset(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %5)
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %9 = load i32, i32* @PMA_PMD_XCONTROL_REG, align 4
  %10 = call i32 @efx_mdio_read(%struct.efx_nic* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @PMA_PMD_EXT_SSR_LBN, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %17 = load i32, i32* @PMA_PMD_XCONTROL_REG, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @efx_mdio_write(%struct.efx_nic* %15, i32 %16, i32 %17, i32 %18)
  %20 = call i32 @mdelay(i32 200)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = load i32, i32* @TENXPRESS_REQUIRED_DEVS, align 4
  %23 = call i32 @efx_mdio_wait_reset_mmds(%struct.efx_nic* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = call i32 @tenxpress_init(%struct.efx_nic* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %35

33:                                               ; preds = %27
  %34 = call i32 @mdelay(i32 10)
  br label %35

35:                                               ; preds = %33, %32, %26
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = call i32 @falcon_start_nic_stats(%struct.efx_nic* %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @efx_mdio_wait_reset_mmds(%struct.efx_nic*, i32) #1

declare dso_local i32 @tenxpress_init(%struct.efx_nic*) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
