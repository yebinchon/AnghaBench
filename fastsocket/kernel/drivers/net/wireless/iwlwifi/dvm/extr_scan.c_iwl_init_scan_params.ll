; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_init_scan_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_init_scan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_init_scan_params(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i8*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @fls(i32 %8)
  %10 = getelementptr i8, i8* %9, i64 -1
  store i8* %10, i8** %3, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  store i8* %19, i8** %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %25
  ret void
}

declare dso_local i8* @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
