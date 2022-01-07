; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PCH_GBE_ADD_FIL_EN = common dso_local global i32 0, align 4
@PCH_GBE_MLT_FIL_EN = common dso_local global i32 0, align 4
@PCH_GBE_RH_ALM_EMP_4 = common dso_local global i32 0, align 4
@PCH_GBE_RH_ALM_FULL_4 = common dso_local global i32 0, align 4
@PCH_GBE_RH_RD_TRG_8 = common dso_local global i32 0, align 4
@PCH_GBE_RX_TCPIPACC_OFF = common dso_local global i32 0, align 4
@PCH_GBE_RX_TCPIPACC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_setup_rctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_setup_rctl(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 0
  store %struct.pch_gbe_hw* %7, %struct.pch_gbe_hw** %3, align 8
  %8 = load i32, i32* @PCH_GBE_ADD_FIL_EN, align 4
  %9 = load i32, i32* @PCH_GBE_MLT_FIL_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PCH_GBE_RH_ALM_EMP_4, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PCH_GBE_RH_ALM_FULL_4, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PCH_GBE_RH_RD_TRG_8, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @iowrite32(i32 %17, i32* %21)
  %23 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @ioread32(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @PCH_GBE_RX_TCPIPACC_OFF, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @PCH_GBE_RX_TCPIPACC_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @iowrite32(i32 %35, i32* %39)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
