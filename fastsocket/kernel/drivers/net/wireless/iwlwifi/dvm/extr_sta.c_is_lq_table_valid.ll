; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_is_lq_table_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_is_lq_table_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_link_quality_cmd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Channel %u is not an HT channel\0A\00", align 1
@LINK_QUAL_MAX_RETRY_NUM = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"index %d of LQ expects HT channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_link_quality_cmd*)* @is_lq_table_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_lq_table_valid(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_link_quality_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca %struct.iwl_link_quality_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store %struct.iwl_link_quality_cmd* %2, %struct.iwl_link_quality_cmd** %7, align 8
  %9 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %10 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %17 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %44, %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_link_quality_cmd, %struct.iwl_link_quality_cmd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %22

47:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %39, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
