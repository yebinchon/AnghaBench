; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@QLCNIC_CMD_GET_STATISTICS = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLC_83XX_TX_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error getting Tx stats\0A\00", align 1
@BIT_2 = common dso_local global i32 0, align 4
@QLC_83XX_MAC_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting MAC stats\0A\00", align 1
@QLC_83XX_RX_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error getting Rx stats\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_get_stats(%struct.qlcnic_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = load i32, i32* @QLCNIC_CMD_GET_STATISTICS, align 4
  %13 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %11, i32 %12)
  %14 = load i32, i32* @BIT_1, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %14, %20
  %22 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @QLC_83XX_TX_STAT_REGS, align 4
  %27 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @QLC_83XX_STAT_TX, align 4
  %32 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %29, %struct.qlcnic_cmd_args* %5, i32* %30, i32 %31, i32* %7)
  store i32* %32, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %105

38:                                               ; preds = %2
  %39 = load i32, i32* @BIT_2, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @QLC_83XX_MAC_STAT_REGS, align 4
  %50 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32 %54, i32 0, i32 %60)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @QLC_83XX_STAT_MAC, align 4
  %65 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %62, %struct.qlcnic_cmd_args* %5, i32* %63, i32 %64, i32* %7)
  store i32* %65, i32** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %38
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %105

71:                                               ; preds = %38
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @QLC_83XX_RX_STAT_REGS, align 4
  %83 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memset(i32 %87, i32 0, i32 %93)
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @QLC_83XX_STAT_RX, align 4
  %98 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %95, %struct.qlcnic_cmd_args* %5, i32* %96, i32 %97, i32* %7)
  store i32* %98, i32** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %71
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = call i32 @netdev_err(%struct.net_device* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %71
  br label %105

105:                                              ; preds = %104, %68, %35
  %106 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  ret void
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*, i32*, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
