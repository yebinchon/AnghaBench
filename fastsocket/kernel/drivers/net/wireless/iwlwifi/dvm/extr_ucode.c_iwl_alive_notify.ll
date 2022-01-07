; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_alive_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_alive_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_8__*, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IWL_UCODE_TLV_FLAGS_PAN = common dso_local global i32 0, align 4
@iwlagn_ipan_queue_to_tx_fifo = common dso_local global i32* null, align 8
@iwlagn_default_queue_to_tx_fifo = common dso_local global i32* null, align 8
@IWL_TX_FIFO_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_alive_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_alive_notify(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @iwl_trans_fw_alive(i32 %10, i32 0)
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IWL_UCODE_TLV_FLAGS_PAN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** @iwlagn_ipan_queue_to_tx_fifo, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** @iwlagn_ipan_queue_to_tx_fifo, align 8
  store i32* %31, i32** %4, align 8
  br label %36

32:                                               ; preds = %21, %1
  %33 = load i32*, i32** @iwlagn_default_queue_to_tx_fifo, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** @iwlagn_default_queue_to_tx_fifo, align 8
  store i32* %35, i32** %4, align 8
  br label %36

36:                                               ; preds = %32, %28
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IWL_TX_FIFO_UNUSED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iwl_trans_ac_txq_enable(i32 %52, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %49, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %66 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %70 = call i32 @iwl_send_wimax_coex(%struct.iwl_priv* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %64
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %84 = call i32 @iwl_set_Xtal_calib(%struct.iwl_priv* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %92 = call i32 @iwl_send_calib_results(%struct.iwl_priv* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %87, %73
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @iwl_trans_fw_alive(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_trans_ac_txq_enable(i32, i32, i32) #1

declare dso_local i32 @iwl_send_wimax_coex(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_set_Xtal_calib(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_send_calib_results(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
