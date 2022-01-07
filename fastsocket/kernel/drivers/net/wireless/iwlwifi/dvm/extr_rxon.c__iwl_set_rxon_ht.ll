; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c__iwl_set_rxon_ht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c__iwl_set_rxon_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_ht_config = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_2__, %struct.iwl_rxon_cmd }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.iwl_rxon_cmd = type { i32 }

@RXON_FLG_CHANNEL_MODE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK = common dso_local global i32 0, align 4
@RXON_FLG_HT40_PROT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_HT_PROT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_HT_OPERATING_MODE_POS = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_PROTECTION_20MHZ = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_PURE_40 = common dso_local global i32 0, align 4
@RXON_FLG_CHANNEL_MODE_MIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid extension channel offset\0A\00", align 1
@RXON_FLG_CHANNEL_MODE_LEGACY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"rxon flags 0x%X operation mode :0x%X extension channel offset 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_ht_config*, %struct.iwl_rxon_context*)* @_iwl_set_rxon_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iwl_set_rxon_ht(%struct.iwl_priv* %0, %struct.iwl_ht_config* %1, %struct.iwl_rxon_context* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_ht_config*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_ht_config* %1, %struct.iwl_ht_config** %5, align 8
  store %struct.iwl_rxon_context* %2, %struct.iwl_rxon_context** %6, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 1
  store %struct.iwl_rxon_cmd* %9, %struct.iwl_rxon_cmd** %7, align 8
  %10 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %17 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RXON_FLG_HT40_PROT_MSK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RXON_FLG_HT_PROT_MSK, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %141

28:                                               ; preds = %3
  %29 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RXON_FLG_HT_OPERATING_MODE_POS, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %41 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %50 = call i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv* %48, %struct.iwl_rxon_context* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %117

52:                                               ; preds = %28
  %53 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION_20MHZ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load i32, i32* @RXON_FLG_CHANNEL_MODE_PURE_40, align 4
  %61 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %66 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %82 [
    i32 130, label %69
    i32 129, label %76
  ]

69:                                               ; preds = %59
  %70 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %59
  %77 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %78 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %59, %76, %69
  br label %116

83:                                               ; preds = %52
  %84 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %85 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %112 [
    i32 130, label %88
    i32 129, label %100
    i32 128, label %111
  ]

88:                                               ; preds = %83
  %89 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MIXED, align 4
  %96 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %115

100:                                              ; preds = %83
  %101 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %102 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MIXED, align 4
  %107 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %115

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %83, %111
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %114 = call i32 @IWL_ERR(%struct.iwl_priv* %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %100, %88
  br label %116

116:                                              ; preds = %115, %82
  br label %123

117:                                              ; preds = %28
  %118 = load i32, i32* @RXON_FLG_CHANNEL_MODE_LEGACY, align 4
  %119 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %116
  %124 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %125 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %126 = call i32 @iwlagn_set_rxon_chain(%struct.iwl_priv* %124, %struct.iwl_rxon_context* %125)
  %127 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %128 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %137 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %127, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %123, %15
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwlagn_set_rxon_chain(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
