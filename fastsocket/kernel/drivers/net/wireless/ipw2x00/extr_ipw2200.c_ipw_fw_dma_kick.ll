; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_fw_dma_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_fw_dma_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c">> :\0A\00", align 1
@IPW_RESET_REG = common dso_local global i32 0, align 4
@IPW_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@IPW_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@DMA_CONTROL_SMALL_CB_CONST_VALUE = common dso_local global i64 0, align 8
@DMA_CB_START = common dso_local global i64 0, align 8
@IPW_DMA_I_DMA_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"<< :\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_fw_dma_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_fw_dma_kick(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @ipw_fw_dma_write_command_block(%struct.ipw_priv* %14, i64 %15, i32* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = load i32, i32* @IPW_RESET_REG, align 4
  %29 = load i32, i32* @IPW_RESET_REG_MASTER_DISABLED, align 4
  %30 = load i32, i32* @IPW_RESET_REG_STOP_MASTER, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ipw_clear_bit(%struct.ipw_priv* %27, i32 %28, i32 %31)
  %33 = load i64, i64* @DMA_CONTROL_SMALL_CB_CONST_VALUE, align 8
  %34 = load i64, i64* @DMA_CB_START, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %3, align 8
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %37 = load i32, i32* @IPW_DMA_I_DMA_CONTROL, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @ipw_write_reg32(%struct.ipw_priv* %36, i32 %37, i64 %38)
  %40 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @IPW_DEBUG_FW(i8*) #1

declare dso_local i32 @ipw_fw_dma_write_command_block(%struct.ipw_priv*, i64, i32*) #1

declare dso_local i32 @ipw_clear_bit(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
