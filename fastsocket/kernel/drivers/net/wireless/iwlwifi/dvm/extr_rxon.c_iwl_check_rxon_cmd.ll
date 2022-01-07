; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_check_rxon_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_check_rxon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.iwl_rxon_cmd }
%struct.iwl_rxon_cmd = type { i32, i32*, i32*, i32, i32, i64, i64 }

@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_TGJ_NARROW_BAND_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"check 2.4G: wrong narrow\0A\00", align 1
@RXON_FLG_RADAR_DETECT_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"check 2.4G: wrong radar\0A\00", align 1
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"check 5.2G: not short slot!\0A\00", align 1
@RXON_FLG_CCK_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"check 5.2G: CCK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mac/bssid mcast!\0A\00", align 1
@IWL_RATE_6M_MASK = common dso_local global i32 0, align 4
@IWL_RATE_1M_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"neither 1 nor 6 are basic\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"aid > 2007\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CCK and short slot\0A\00", align 1
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"CCK and auto detect\00", align 1
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"TGg but no auto-detect\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"zero channel is invalid\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Invalid RXON (%#x), channel %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwl_check_rxon_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_check_rxon_cmd(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rxon_context*, align 8
  %5 = alloca %struct.iwl_rxon_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %4, align 8
  %7 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %7, i32 0, i32 0
  store %struct.iwl_rxon_cmd* %8, %struct.iwl_rxon_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RXON_FLG_TGJ_NARROW_BAND_MSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = call i32 @IWL_WARN(%struct.iwl_priv* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @BIT(i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RXON_FLG_RADAR_DETECT_MSK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %37 = call i32 @IWL_WARN(%struct.iwl_priv* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @BIT(i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %28
  br label %69

42:                                               ; preds = %2
  %43 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %51 = call i32 @IWL_WARN(%struct.iwl_priv* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @BIT(i32 2)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %64 = call i32 @IWL_WARN(%struct.iwl_priv* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @BIT(i32 3)
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %74, %79
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %85 = call i32 @IWL_WARN(%struct.iwl_priv* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 @BIT(i32 4)
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %69
  %90 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %91 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IWL_RATE_6M_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IWL_RATE_1M_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %105 = call i32 @IWL_WARN(%struct.iwl_priv* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 @BIT(i32 5)
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %96, %89
  %110 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %111 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @le16_to_cpu(i64 %112)
  %114 = icmp sgt i32 %113, 2007
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %117 = call i32 @IWL_WARN(%struct.iwl_priv* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %118 = call i32 @BIT(i32 6)
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %126 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %130 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %131 = or i32 %129, %130
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %121
  %134 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %135 = call i32 @IWL_WARN(%struct.iwl_priv* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %136 = call i32 @BIT(i32 7)
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %121
  %140 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %144 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %148 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %149 = or i32 %147, %148
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %139
  %152 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %153 = call i32 @IWL_WARN(%struct.iwl_priv* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %154 = call i32 @BIT(i32 8)
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %151, %139
  %158 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %159 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %162 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %169 = call i32 @IWL_WARN(%struct.iwl_priv* %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %170 = call i32 @BIT(i32 9)
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %167, %157
  %174 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %175 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %180 = call i32 @IWL_WARN(%struct.iwl_priv* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %181 = call i32 @BIT(i32 10)
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %178, %173
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %5, align 8
  %188 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @le16_to_cpu(i64 %189)
  %191 = call i32 @WARN(i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %186, i32 %190)
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  br label %198

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %194
  %199 = phi i32 [ %196, %194 ], [ 0, %197 ]
  ret i32 %199
}

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
