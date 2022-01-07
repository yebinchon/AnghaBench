; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i64 }

@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@TxThresh = common dso_local global i32 0, align 4
@TxConfig = common dso_local global i64 0, align 8
@IFG = common dso_local global i32 0, align 4
@TX_DMA_BURST = common dso_local global i32 0, align 4
@TxDMAShift = common dso_local global i32 0, align 4
@Config1 = common dso_local global i32 0, align 4
@DriverLoaded = common dso_local global i32 0, align 4
@PMEnable = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@PARMEnable = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@PMEStatus = common dso_local global i32 0, align 4
@HiTxRingAddr = common dso_local global i64 0, align 8
@RxRingAddr = common dso_local global i64 0, align 8
@CP_RX_RING_SIZE = common dso_local global i32 0, align 4
@TxRingAddr = common dso_local global i64 0, align 8
@MultiIntr = common dso_local global i32 0, align 4
@Cfg9346_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_init_hw(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %5 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %6 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %9 = call i32 @cp_reset_hw(%struct.cp_private* %8)
  %10 = load i32, i32* @Cfg9346, align 4
  %11 = load i32, i32* @Cfg9346_Unlock, align 4
  %12 = call i32 @cpw8_f(i32 %10, i32 %11)
  %13 = load i64, i64* @MAC0, align 8
  %14 = add nsw i64 %13, 0
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 0
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = call i32 @cpw32_f(i64 %14, i32 %21)
  %23 = load i64, i64* @MAC0, align 8
  %24 = add nsw i64 %23, 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = call i32 @cpw32_f(i64 %24, i32 %31)
  %33 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %34 = call i32 @cp_start_hw(%struct.cp_private* %33)
  %35 = load i32, i32* @TxThresh, align 4
  %36 = call i32 @cpw8(i32 %35, i32 6)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @__cp_set_rx_mode(%struct.net_device* %37)
  %39 = load i64, i64* @TxConfig, align 8
  %40 = load i32, i32* @IFG, align 4
  %41 = load i32, i32* @TX_DMA_BURST, align 4
  %42 = load i32, i32* @TxDMAShift, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = call i32 @cpw32_f(i64 %39, i32 %44)
  %46 = load i32, i32* @Config1, align 4
  %47 = load i32, i32* @Config1, align 4
  %48 = call i32 @cpr8(i32 %47)
  %49 = load i32, i32* @DriverLoaded, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PMEnable, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @cpw8(i32 %46, i32 %52)
  %54 = load i32, i32* @Config3, align 4
  %55 = load i32, i32* @PARMEnable, align 4
  %56 = call i32 @cpw8(i32 %54, i32 %55)
  %57 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %58 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @Config5, align 4
  %60 = load i32, i32* @Config5, align 4
  %61 = call i32 @cpr8(i32 %60)
  %62 = load i32, i32* @PMEStatus, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @cpw8(i32 %59, i32 %63)
  %65 = load i64, i64* @HiTxRingAddr, align 8
  %66 = call i32 @cpw32_f(i64 %65, i32 0)
  %67 = load i64, i64* @HiTxRingAddr, align 8
  %68 = add nsw i64 %67, 4
  %69 = call i32 @cpw32_f(i64 %68, i32 0)
  %70 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %71 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* @RxRingAddr, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @cpw32_f(i64 %73, i32 %74)
  %76 = load i64, i64* @RxRingAddr, align 8
  %77 = add nsw i64 %76, 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 16
  %80 = ashr i32 %79, 16
  %81 = call i32 @cpw32_f(i64 %77, i32 %80)
  %82 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i64, i64* @TxRingAddr, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @cpw32_f(i64 %89, i32 %90)
  %92 = load i64, i64* @TxRingAddr, align 8
  %93 = add nsw i64 %92, 4
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 16
  %96 = ashr i32 %95, 16
  %97 = call i32 @cpw32_f(i64 %93, i32 %96)
  %98 = load i32, i32* @MultiIntr, align 4
  %99 = call i32 @cpw16(i32 %98, i32 0)
  %100 = load i32, i32* @Cfg9346, align 4
  %101 = load i32, i32* @Cfg9346_Lock, align 4
  %102 = call i32 @cpw8_f(i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @cp_reset_hw(%struct.cp_private*) #1

declare dso_local i32 @cpw8_f(i32, i32) #1

declare dso_local i32 @cpw32_f(i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cp_start_hw(%struct.cp_private*) #1

declare dso_local i32 @cpw8(i32, i32) #1

declare dso_local i32 @__cp_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpw16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
