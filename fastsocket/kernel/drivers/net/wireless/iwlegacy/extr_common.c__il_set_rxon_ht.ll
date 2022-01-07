; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c__il_set_rxon_ht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c__il_set_rxon_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.il_rxon_cmd }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.il_priv*)* }
%struct.il_rxon_cmd = type { i32 }
%struct.il_ht_config = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_ht_config*)* @_il_set_rxon_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_il_set_rxon_ht(%struct.il_priv* %0, %struct.il_ht_config* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_ht_config*, align 8
  %5 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_ht_config* %1, %struct.il_ht_config** %4, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 2
  store %struct.il_rxon_cmd* %7, %struct.il_rxon_cmd** %5, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %15 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RXON_FLG_HT40_PROT_MSK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RXON_FLG_HT_PROT_MSK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %148

26:                                               ; preds = %2
  %27 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RXON_FLG_HT_OPERATING_MODE_POS, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MSK, align 4
  %39 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = call i64 @il_is_ht40_tx_allowed(%struct.il_priv* %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %113

49:                                               ; preds = %26
  %50 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION_20MHZ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %49
  %57 = load i32, i32* @RXON_FLG_CHANNEL_MODE_PURE_40, align 4
  %58 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %79 [
    i32 130, label %66
    i32 129, label %73
  ]

66:                                               ; preds = %56
  %67 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %56
  %74 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %75 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %56, %73, %66
  br label %112

80:                                               ; preds = %49
  %81 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %109 [
    i32 130, label %85
    i32 129, label %97
    i32 128, label %108
  ]

85:                                               ; preds = %80
  %86 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MIXED, align 4
  %93 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %94 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %111

97:                                               ; preds = %80
  %98 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %99 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @RXON_FLG_CHANNEL_MODE_MIXED, align 4
  %104 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %105 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %111

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %80, %108
  %110 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %97, %85
  br label %112

112:                                              ; preds = %111, %79
  br label %119

113:                                              ; preds = %26
  %114 = load i32, i32* @RXON_FLG_CHANNEL_MODE_LEGACY, align 4
  %115 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %112
  %120 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %121 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %123, align 8
  %125 = icmp ne i32 (%struct.il_priv*)* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %128 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %130, align 8
  %132 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %133 = call i32 %131(%struct.il_priv* %132)
  br label %134

134:                                              ; preds = %126, %119
  %135 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %140 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %144 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @D_ASSOC(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %142, i32 %146)
  br label %148

148:                                              ; preds = %134, %13
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @il_is_ht40_tx_allowed(%struct.il_priv*, i32*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_ASSOC(i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
