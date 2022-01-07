; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_chan_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_chan_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_ULPRX_CTL = common dso_local global i32 0, align 4
@F_ROUND_ROBIN = common dso_local global i32 0, align 4
@A_ULPTX_CONFIG = common dso_local global i32 0, align 4
@F_CFG_RR_ARB = common dso_local global i32 0, align 4
@A_MPS_CFG = common dso_local global i32 0, align 4
@F_TPRXPORTEN = common dso_local global i32 0, align 4
@F_ENFORCEPKT = common dso_local global i32 0, align 4
@F_TPTXPORT0EN = common dso_local global i32 0, align 4
@F_PORT0ACTIVE = common dso_local global i32 0, align 4
@F_TPTXPORT1EN = common dso_local global i32 0, align 4
@F_PORT1ACTIVE = common dso_local global i32 0, align 4
@A_PM1_TX_CFG = common dso_local global i32 0, align 4
@A_ULPTX_DMA_WEIGHT = common dso_local global i32 0, align 4
@A_TP_PC_CONFIG = common dso_local global i32 0, align 4
@F_TXTOSQUEUEMAPMODE = common dso_local global i32 0, align 4
@A_TP_TX_MOD_QUEUE_REQ_MAP = common dso_local global i32 0, align 4
@A_TP_TX_MOD_QUE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @chan_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_init_hw(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @A_ULPRX_CTL, align 4
  %11 = load i32, i32* @F_ROUND_ROBIN, align 4
  %12 = call i32 @t3_set_reg_field(%struct.adapter* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %15 = load i32, i32* @F_CFG_RR_ARB, align 4
  %16 = call i32 @t3_set_reg_field(%struct.adapter* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @A_MPS_CFG, align 4
  %19 = load i32, i32* @F_TPRXPORTEN, align 4
  %20 = load i32, i32* @F_ENFORCEPKT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @F_TPTXPORT0EN, align 4
  %26 = load i32, i32* @F_PORT0ACTIVE, align 4
  %27 = or i32 %25, %26
  br label %32

28:                                               ; preds = %8
  %29 = load i32, i32* @F_TPTXPORT1EN, align 4
  %30 = load i32, i32* @F_PORT1ACTIVE, align 4
  %31 = or i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %27, %24 ], [ %31, %28 ]
  %34 = or i32 %21, %33
  %35 = call i32 @t3_write_reg(%struct.adapter* %17, i32 %18, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load i32, i32* @A_PM1_TX_CFG, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 0
  %42 = call i32 @t3_write_reg(%struct.adapter* %36, i32 %37, i32 %41)
  br label %97

43:                                               ; preds = %2
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load i32, i32* @A_ULPRX_CTL, align 4
  %46 = load i32, i32* @F_ROUND_ROBIN, align 4
  %47 = call i32 @t3_set_reg_field(%struct.adapter* %44, i32 %45, i32 0, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %50 = load i32, i32* @F_CFG_RR_ARB, align 4
  %51 = call i32 @t3_set_reg_field(%struct.adapter* %48, i32 %49, i32 0, i32 %50)
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = load i32, i32* @A_ULPTX_DMA_WEIGHT, align 4
  %54 = call i32 @V_D1_WEIGHT(i32 16)
  %55 = call i32 @V_D0_WEIGHT(i32 16)
  %56 = or i32 %54, %55
  %57 = call i32 @t3_write_reg(%struct.adapter* %52, i32 %53, i32 %56)
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = load i32, i32* @A_MPS_CFG, align 4
  %60 = load i32, i32* @F_TPTXPORT0EN, align 4
  %61 = load i32, i32* @F_TPTXPORT1EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @F_TPRXPORTEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @F_PORT0ACTIVE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @F_PORT1ACTIVE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @F_ENFORCEPKT, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @t3_write_reg(%struct.adapter* %58, i32 %59, i32 %70)
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = load i32, i32* @A_PM1_TX_CFG, align 4
  %74 = call i32 @t3_write_reg(%struct.adapter* %72, i32 %73, i32 -2147450880)
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = load i32, i32* @A_TP_PC_CONFIG, align 4
  %77 = load i32, i32* @F_TXTOSQUEUEMAPMODE, align 4
  %78 = call i32 @t3_set_reg_field(%struct.adapter* %75, i32 %76, i32 0, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = load i32, i32* @A_TP_TX_MOD_QUEUE_REQ_MAP, align 4
  %81 = call i32 @V_TX_MOD_QUEUE_REQ_MAP(i32 170)
  %82 = call i32 @t3_write_reg(%struct.adapter* %79, i32 %80, i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %93, %43
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 16
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = load i32, i32* @A_TP_TX_MOD_QUE_TABLE, align 4
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %89, 16
  %91 = or i32 %90, 4112
  %92 = call i32 @t3_write_reg(%struct.adapter* %87, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %83

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %32
  ret void
}

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_D1_WEIGHT(i32) #1

declare dso_local i32 @V_D0_WEIGHT(i32) #1

declare dso_local i32 @V_TX_MOD_QUEUE_REQ_MAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
