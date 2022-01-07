; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_set_rxon_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_set_rxon_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@STATUS_POWER_PMI = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@RXON_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_MIMO_CNT_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_CNT_POS = common dso_local global i32 0, align 4
@IWL_NUM_RX_CHAINS_SINGLE = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_MIMO_FORCE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rx_chain=0x%X active=%d idle=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_set_rxon_chain(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rxon_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %4, align 8
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = call i32 @is_single_rx_stream(%struct.iwl_priv* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @STATUS_POWER_PMI, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 5
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %37
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %44
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @first_antenna(i32 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %58, %44, %37
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @RXON_RX_CHAIN_VALID_POS, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %72 = call i32 @iwl_get_active_rx_chain_count(%struct.iwl_priv* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @iwl_get_idle_rx_chain_count(%struct.iwl_priv* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @iwl_count_chain_bitmap(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %67
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RXON_RX_CHAIN_MIMO_CNT_POS, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @RXON_RX_CHAIN_CNT_POS, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @cpu_to_le16(i32 %100)
  %102 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %103 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %89
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @IWL_NUM_RX_CHAINS_SINGLE, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* @RXON_RX_CHAIN_MIMO_FORCE_MSK, align 4
  %116 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %117 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %129

121:                                              ; preds = %111, %107, %89
  %122 = load i32, i32* @RXON_RX_CHAIN_MIMO_FORCE_MSK, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %121, %114
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %131 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %132 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %144, %145
  br label %147

147:                                              ; preds = %143, %140, %129
  %148 = phi i1 [ true, %140 ], [ true, %129 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @WARN_ON(i32 %149)
  ret void
}

declare dso_local i32 @is_single_rx_stream(%struct.iwl_priv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @iwl_get_active_rx_chain_count(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_get_idle_rx_chain_count(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_count_chain_bitmap(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
