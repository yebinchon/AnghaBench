; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_full_rxon_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwl_full_rxon_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd }
%struct.iwl_rxon_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"need full RXON - !iwl_is_associated_ctx(ctx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"need full RXON - !ether_addr_equal(staging->bssid_addr, active->bssid_addr)\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"need full RXON - !ether_addr_equal(staging->node_addr, active->node_addr)\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"need full RXON - !ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr)\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"need full RXON - staging->dev_type != active->dev_type - %d != %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"need full RXON - staging->channel != active->channel - %d != %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"need full RXON - staging->air_propagation != active->air_propagation - %d != %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [117 x i8] c"need full RXON - staging->ofdm_ht_single_stream_basic_rates != active->ofdm_ht_single_stream_basic_rates - %d != %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [113 x i8] c"need full RXON - staging->ofdm_ht_dual_stream_basic_rates != active->ofdm_ht_dual_stream_basic_rates - %d != %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [117 x i8] c"need full RXON - staging->ofdm_ht_triple_stream_basic_rates != active->ofdm_ht_triple_stream_basic_rates - %d != %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"need full RXON - staging->assoc_id != active->assoc_id - %d != %d\0A\00", align 1
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [109 x i8] c"need full RXON - staging->flags & RXON_FLG_BAND_24G_MSK != active->flags & RXON_FLG_BAND_24G_MSK - %d != %d\0A\00", align 1
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [123 x i8] c"need full RXON - staging->filter_flags & RXON_FILTER_ASSOC_MSK != active->filter_flags & RXON_FILTER_ASSOC_MSK - %d != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwl_full_rxon_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_full_rxon_required(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_rxon_cmd*, align 8
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 1
  store %struct.iwl_rxon_cmd* %9, %struct.iwl_rxon_cmd** %6, align 8
  %10 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %10, i32 0, i32 0
  store %struct.iwl_rxon_cmd* %11, %struct.iwl_rxon_cmd** %7, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = call i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %17 = call i32 (%struct.iwl_priv*, i8*, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, ...)*)(%struct.iwl_priv* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %224

18:                                               ; preds = %2
  %19 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ether_addr_equal(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %29 = call i32 (%struct.iwl_priv*, i8*, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, ...)*)(%struct.iwl_priv* %28, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %224

30:                                               ; preds = %18
  %31 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ether_addr_equal(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %41 = call i32 (%struct.iwl_priv*, i8*, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, ...)*)(%struct.iwl_priv* %40, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %224

42:                                               ; preds = %30
  %43 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ether_addr_equal(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %53 = call i32 (%struct.iwl_priv*, i8*, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, ...)*)(%struct.iwl_priv* %52, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %224

54:                                               ; preds = %42
  %55 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %64 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %63, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %69)
  store i32 1, i32* %3, align 4
  br label %224

71:                                               ; preds = %54
  %72 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %81 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %86)
  store i32 1, i32* %3, align 4
  br label %224

88:                                               ; preds = %71
  %89 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %98 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %97, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %103)
  store i32 1, i32* %3, align 4
  br label %224

105:                                              ; preds = %88
  %106 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %107 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %115 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %114, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %120)
  store i32 1, i32* %3, align 4
  br label %224

122:                                              ; preds = %105
  %123 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %122
  %131 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %132 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %131, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.8, i64 0, i64 0), i32 %134, i32 %137)
  store i32 1, i32* %3, align 4
  br label %224

139:                                              ; preds = %122
  %140 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %141 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %149 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %150 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %148, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.9, i64 0, i64 0), i32 %151, i32 %154)
  store i32 1, i32* %3, align 4
  br label %224

156:                                              ; preds = %139
  %157 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %158 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %166 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %167 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %170 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %165, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %168, i32 %171)
  store i32 1, i32* %3, align 4
  br label %224

173:                                              ; preds = %156
  %174 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %175 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %178 = and i32 %176, %177
  %179 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %178, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %173
  %186 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %187 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %188 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %191 = and i32 %189, %190
  %192 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %196 = and i32 %194, %195
  %197 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %186, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.11, i64 0, i64 0), i32 %191, i32 %196)
  store i32 1, i32* %3, align 4
  br label %224

198:                                              ; preds = %173
  %199 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %200 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %203 = and i32 %201, %202
  %204 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %203, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %198
  %211 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %212 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %6, align 8
  %213 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %216 = and i32 %214, %215
  %217 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %221 = and i32 %219, %220
  %222 = call i32 (%struct.iwl_priv*, i8*, i32, i32, ...) bitcast (i32 (...)* @IWL_DEBUG_INFO to i32 (%struct.iwl_priv*, i8*, i32, i32, ...)*)(%struct.iwl_priv* %211, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.12, i64 0, i64 0), i32 %216, i32 %221)
  store i32 1, i32* %3, align 4
  br label %224

223:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %210, %185, %164, %147, %130, %113, %96, %79, %62, %51, %39, %27, %15
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_DEBUG_INFO(...) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
