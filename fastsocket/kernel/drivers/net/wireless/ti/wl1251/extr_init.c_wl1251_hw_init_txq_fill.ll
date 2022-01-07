; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_txq_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_txq_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx_tx_queue_qos_config = type { i32, i32, i32 }

@QOS_TX_HIGH_BE_DEF = common dso_local global i32 0, align 4
@QOS_TX_LOW_BE_DEF = common dso_local global i32 0, align 4
@QOS_TX_HIGH_BK_DEF = common dso_local global i32 0, align 4
@QOS_TX_LOW_BK_DEF = common dso_local global i32 0, align 4
@QOS_TX_HIGH_VI_DEF = common dso_local global i32 0, align 4
@QOS_TX_LOW_VI_DEF = common dso_local global i32 0, align 4
@QOS_TX_HIGH_VO_DEF = common dso_local global i32 0, align 4
@QOS_TX_LOW_VO_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid TX queue id: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acx_tx_queue_qos_config*, i32)* @wl1251_hw_init_txq_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_hw_init_txq_fill(i32 %0, %struct.acx_tx_queue_qos_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acx_tx_queue_qos_config*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.acx_tx_queue_qos_config* %1, %struct.acx_tx_queue_qos_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %10 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %64 [
    i32 131, label %12
    i32 130, label %25
    i32 129, label %38
    i32 128, label %51
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @QOS_TX_HIGH_BE_DEF, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sdiv i32 %15, 100
  %17 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %18 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @QOS_TX_LOW_BE_DEF, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 100
  %23 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %24 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %69

25:                                               ; preds = %3
  %26 = load i32, i32* @QOS_TX_HIGH_BK_DEF, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 100
  %30 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %31 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @QOS_TX_LOW_BK_DEF, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 100
  %36 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %37 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %69

38:                                               ; preds = %3
  %39 = load i32, i32* @QOS_TX_HIGH_VI_DEF, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 100
  %43 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %44 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @QOS_TX_LOW_VI_DEF, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 100
  %49 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %50 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %69

51:                                               ; preds = %3
  %52 = load i32, i32* @QOS_TX_HIGH_VO_DEF, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sdiv i32 %54, 100
  %56 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %57 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @QOS_TX_LOW_VO_DEF, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sdiv i32 %60, 100
  %62 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %6, align 8
  %63 = getelementptr inbounds %struct.acx_tx_queue_qos_config, %struct.acx_tx_queue_qos_config* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %3
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @wl1251_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %51, %38, %25, %12
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @wl1251_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
