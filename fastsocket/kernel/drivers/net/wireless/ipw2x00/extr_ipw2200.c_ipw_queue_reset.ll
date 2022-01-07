; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i64, i64, i32*, i32 }

@IPW_TX_CMD_QUEUE_READ_INDEX = common dso_local global i32 0, align 4
@IPW_TX_CMD_QUEUE_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_TX_CMD_QUEUE_BD_BASE = common dso_local global i32 0, align 4
@IPW_TX_CMD_QUEUE_BD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Tx Cmd queue init failed\0A\00", align 1
@IPW_TX_QUEUE_0_READ_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_0_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_0_BD_BASE = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_0_BD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Tx 0 queue init failed\0A\00", align 1
@IPW_TX_QUEUE_1_READ_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_1_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_1_BD_BASE = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_1_BD_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Tx 1 queue init failed\0A\00", align 1
@IPW_TX_QUEUE_2_READ_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_2_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_2_BD_BASE = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_2_BD_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Tx 2 queue init failed\0A\00", align 1
@IPW_TX_QUEUE_3_READ_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_3_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_3_BD_BASE = common dso_local global i32 0, align 4
@IPW_TX_QUEUE_3_BD_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Tx 3 queue init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_queue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_queue_reset(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 64, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %8 = call i32 @ipw_tx_queue_free(%struct.ipw_priv* %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IPW_TX_CMD_QUEUE_READ_INDEX, align 4
  %14 = load i32, i32* @IPW_TX_CMD_QUEUE_WRITE_INDEX, align 4
  %15 = load i32, i32* @IPW_TX_CMD_QUEUE_BD_BASE, align 4
  %16 = load i32, i32* @IPW_TX_CMD_QUEUE_BD_SIZE, align 4
  %17 = call i32 @ipw_queue_tx_init(%struct.ipw_priv* %9, i32* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IPW_TX_QUEUE_0_READ_INDEX, align 4
  %30 = load i32, i32* @IPW_TX_QUEUE_0_WRITE_INDEX, align 4
  %31 = load i32, i32* @IPW_TX_QUEUE_0_BD_BASE, align 4
  %32 = load i32, i32* @IPW_TX_QUEUE_0_BD_SIZE, align 4
  %33 = call i32 @ipw_queue_tx_init(%struct.ipw_priv* %23, i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %92

38:                                               ; preds = %22
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IPW_TX_QUEUE_1_READ_INDEX, align 4
  %46 = load i32, i32* @IPW_TX_QUEUE_1_WRITE_INDEX, align 4
  %47 = load i32, i32* @IPW_TX_QUEUE_1_BD_BASE, align 4
  %48 = load i32, i32* @IPW_TX_QUEUE_1_BD_SIZE, align 4
  %49 = call i32 @ipw_queue_tx_init(%struct.ipw_priv* %39, i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %92

54:                                               ; preds = %38
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @IPW_TX_QUEUE_2_READ_INDEX, align 4
  %62 = load i32, i32* @IPW_TX_QUEUE_2_WRITE_INDEX, align 4
  %63 = load i32, i32* @IPW_TX_QUEUE_2_BD_BASE, align 4
  %64 = load i32, i32* @IPW_TX_QUEUE_2_BD_SIZE, align 4
  %65 = call i32 @ipw_queue_tx_init(%struct.ipw_priv* %55, i32* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %92

70:                                               ; preds = %54
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @IPW_TX_QUEUE_3_READ_INDEX, align 4
  %78 = load i32, i32* @IPW_TX_QUEUE_3_WRITE_INDEX, align 4
  %79 = load i32, i32* @IPW_TX_QUEUE_3_BD_BASE, align 4
  %80 = load i32, i32* @IPW_TX_QUEUE_3_BD_SIZE, align 4
  %81 = call i32 @ipw_queue_tx_init(%struct.ipw_priv* %71, i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %92

86:                                               ; preds = %70
  %87 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %90 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %96

92:                                               ; preds = %84, %68, %52, %36, %20
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %94 = call i32 @ipw_tx_queue_free(%struct.ipw_priv* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ipw_tx_queue_free(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_queue_tx_init(%struct.ipw_priv*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
