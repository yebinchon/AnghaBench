; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_edca_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_edca_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i64 }
%struct.mwl8k_cmd_set_edca_params = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_EDCA_PARAMS = common dso_local global i32 0, align 4
@MWL8K_SET_EDCA_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i8*, i32, i32, i8*, i32)* @mwl8k_cmd_set_edca_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_edca_params(%struct.ieee80211_hw* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mwl8k_priv*, align 8
  %15 = alloca %struct.mwl8k_cmd_set_edca_params*, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %18, align 8
  store %struct.mwl8k_priv* %19, %struct.mwl8k_priv** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mwl8k_cmd_set_edca_params* @kzalloc(i32 96, i32 %20)
  store %struct.mwl8k_cmd_set_edca_params* %21, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %22 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %23 = icmp eq %struct.mwl8k_cmd_set_edca_params* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %103

27:                                               ; preds = %6
  %28 = load i32, i32* @MWL8K_CMD_SET_EDCA_PARAMS, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %31 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = call i8* @cpu_to_le16(i32 96)
  %34 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @MWL8K_SET_EDCA_ALL, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %40 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %44 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %14, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %27
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i64 @ilog2(i32 %51)
  %53 = call i8* @cpu_to_le32(i64 %52)
  %54 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %55 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i64 @ilog2(i32 %58)
  %60 = call i8* @cpu_to_le32(i64 %59)
  %61 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %62 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %66 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %70 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %95

72:                                               ; preds = %27
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i64 @ilog2(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %78 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i64 @ilog2(i32 %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %85 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %89 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %93 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %72, %49
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %97 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %98 = getelementptr inbounds %struct.mwl8k_cmd_set_edca_params, %struct.mwl8k_cmd_set_edca_params* %97, i32 0, i32 0
  %99 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %96, %struct.TYPE_6__* %98)
  store i32 %99, i32* %16, align 4
  %100 = load %struct.mwl8k_cmd_set_edca_params*, %struct.mwl8k_cmd_set_edca_params** %15, align 8
  %101 = call i32 @kfree(%struct.mwl8k_cmd_set_edca_params* %100)
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %95, %24
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.mwl8k_cmd_set_edca_params* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_edca_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
