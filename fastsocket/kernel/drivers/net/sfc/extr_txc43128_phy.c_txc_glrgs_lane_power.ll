; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_txc43128_phy.c_txc_glrgs_lane_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_txc43128_phy.c_txc_glrgs_lane_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@TXC_GLCMD_L01PD_LBN = common dso_local global i32 0, align 4
@TXC_GLCMD_L23PD_LBN = common dso_local global i32 0, align 4
@TXC_GLRGS_GLCMD = common dso_local global i32 0, align 4
@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @txc_glrgs_lane_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txc_glrgs_lane_power(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TXC_GLCMD_L01PD_LBN, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @TXC_GLCMD_L23PD_LBN, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TXC_GLRGS_GLCMD, align 4
  %15 = call i32 @efx_mdio_read(%struct.efx_nic* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TXC_GLRGS_GLCMD, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @efx_mdio_write(%struct.efx_nic* %32, i32 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
