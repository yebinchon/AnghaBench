; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_hw_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i64 }
%struct.netdrv_private = type { i64, i32, i32, i32*, i32, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ChipCmd = common dso_local global i32 0, align 4
@ChipCmdClear = common dso_local global i32 0, align 4
@CmdReset = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@CmdRxEnb = common dso_local global i32 0, align 4
@CmdTxEnb = common dso_local global i32 0, align 4
@netdrv_rx_config = common dso_local global i32 0, align 4
@RxConfig = common dso_local global i64 0, align 8
@rtl_chip_info = common dso_local global %struct.TYPE_2__* null, align 8
@TxConfig = common dso_local global i32 0, align 4
@TX_DMA_BURST = common dso_local global i32 0, align 4
@TxDMAShift = common dso_local global i32 0, align 4
@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@Cfg9346_Lock = common dso_local global i32 0, align 4
@RxBuf = common dso_local global i64 0, align 8
@NUM_TX_DESC = common dso_local global i32 0, align 4
@TxAddr0 = common dso_local global i64 0, align 8
@RxMissed = common dso_local global i64 0, align 8
@MultiIntr = common dso_local global i32 0, align 4
@MultiIntrClear = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@netdrv_intr_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdrv_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdrv_hw_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdrv_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdrv_private* %7, %struct.netdrv_private** %3, align 8
  %8 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %8, i32 0, i32 6
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ChipCmd, align 4
  %13 = load i32, i32* @ChipCmd, align 4
  %14 = call i32 @NETDRV_R8(i32 %13)
  %15 = load i32, i32* @ChipCmdClear, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CmdReset, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @NETDRV_W8(i32 %12, i32 %18)
  %20 = call i32 @udelay(i32 100)
  store i32 1000, i32* %5, align 4
  br label %21

21:                                               ; preds = %32, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* @ChipCmd, align 4
  %26 = call i32 @NETDRV_R8(i32 %25)
  %27 = load i32, i32* @CmdReset, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %21

35:                                               ; preds = %30, %21
  %36 = load i64, i64* @MAC0, align 8
  %37 = add nsw i64 %36, 0
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 0
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = call i32 @NETDRV_W32_F(i64 %37, i32 %44)
  %46 = load i64, i64* @MAC0, align 8
  %47 = add nsw i64 %46, 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 4
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = call i32 @NETDRV_W32_F(i64 %47, i32 %54)
  %56 = load i32, i32* @ChipCmd, align 4
  %57 = load i32, i32* @ChipCmd, align 4
  %58 = call i32 @NETDRV_R8(i32 %57)
  %59 = load i32, i32* @ChipCmdClear, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @CmdRxEnb, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CmdTxEnb, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @NETDRV_W8_F(i32 %56, i32 %64)
  %66 = load i32, i32* @netdrv_rx_config, align 4
  %67 = load i64, i64* @RxConfig, align 8
  %68 = call i32 @NETDRV_R32(i64 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtl_chip_info, align 8
  %70 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %71 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %68, %75
  %77 = or i32 %66, %76
  store i32 %77, i32* %5, align 4
  %78 = load i64, i64* @RxConfig, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @NETDRV_W32_F(i64 %78, i32 %79)
  %81 = load i32, i32* @TxConfig, align 4
  %82 = load i32, i32* @TX_DMA_BURST, align 4
  %83 = load i32, i32* @TxDMAShift, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @NETDRV_W32(i32 %81, i32 %84)
  %86 = load i32, i32* @Cfg9346, align 4
  %87 = load i32, i32* @Cfg9346_Unlock, align 4
  %88 = call i32 @NETDRV_W8_F(i32 %86, i32 %87)
  %89 = call i32 @udelay(i32 10)
  %90 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %91 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @Cfg9346, align 4
  %93 = load i32, i32* @Cfg9346_Lock, align 4
  %94 = call i32 @NETDRV_W8_F(i32 %92, i32 %93)
  %95 = call i32 @udelay(i32 10)
  %96 = load i64, i64* @RxBuf, align 8
  %97 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %98 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @NETDRV_W32_F(i64 %96, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %127, %35
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @NUM_TX_DESC, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i64, i64* @TxAddr0, align 8
  %107 = load i32, i32* %5, align 4
  %108 = mul nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %112 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %115 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %122 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %120, %123
  %125 = add nsw i32 %113, %124
  %126 = call i32 @NETDRV_W32_F(i64 %110, i32 %125)
  br label %127

127:                                              ; preds = %105
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %101

130:                                              ; preds = %101
  %131 = load i64, i64* @RxMissed, align 8
  %132 = call i32 @NETDRV_W32_F(i64 %131, i32 0)
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @netdrv_set_rx_mode(%struct.net_device* %133)
  %135 = load i32, i32* @MultiIntr, align 4
  %136 = load i32, i32* @MultiIntr, align 4
  %137 = call i32 @NETDRV_R16(i32 %136)
  %138 = load i32, i32* @MultiIntrClear, align 4
  %139 = and i32 %137, %138
  %140 = call i32 @NETDRV_W16(i32 %135, i32 %139)
  %141 = load i32, i32* @ChipCmd, align 4
  %142 = load i32, i32* @ChipCmd, align 4
  %143 = call i32 @NETDRV_R8(i32 %142)
  %144 = load i32, i32* @ChipCmdClear, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @CmdRxEnb, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @CmdTxEnb, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @NETDRV_W8_F(i32 %141, i32 %149)
  %151 = load i32, i32* @IntrMask, align 4
  %152 = load i32, i32* @netdrv_intr_mask, align 4
  %153 = call i32 @NETDRV_W16_F(i32 %151, i32 %152)
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = call i32 @netif_start_queue(%struct.net_device* %154)
  %156 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @NETDRV_W8(i32, i32) #1

declare dso_local i32 @NETDRV_R8(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @NETDRV_W32_F(i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @NETDRV_W8_F(i32, i32) #1

declare dso_local i32 @NETDRV_R32(i64) #1

declare dso_local i32 @NETDRV_W32(i32, i32) #1

declare dso_local i32 @netdrv_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @NETDRV_W16(i32, i32) #1

declare dso_local i32 @NETDRV_R16(i32) #1

declare dso_local i32 @NETDRV_W16_F(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
