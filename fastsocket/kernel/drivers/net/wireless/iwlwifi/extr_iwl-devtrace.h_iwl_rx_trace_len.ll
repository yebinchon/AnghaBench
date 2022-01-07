; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-devtrace.h_iwl_rx_trace_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-devtrace.h_iwl_rx_trace_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i64, i32 }
%struct.iwl_cmd_header = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_trans*, i8*, i64)* @iwl_rx_trace_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_rx_trace_len(%struct.iwl_trans* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_cmd_header*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_cmd_header*
  store %struct.iwl_cmd_header* %14, %struct.iwl_cmd_header** %8, align 8
  %15 = load %struct.iwl_cmd_header*, %struct.iwl_cmd_header** %8, align 8
  %16 = getelementptr inbounds %struct.iwl_cmd_header, %struct.iwl_cmd_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %4, align 8
  br label %53

24:                                               ; preds = %3
  %25 = load %struct.iwl_cmd_header*, %struct.iwl_cmd_header** %8, align 8
  %26 = bitcast %struct.iwl_cmd_header* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = bitcast i8* %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %9, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_is_data(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %24
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %4, align 8
  br label %53

42:                                               ; preds = %24
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add i64 12, %46
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ieee80211_hdrlen(i32 %50)
  %52 = add i64 %47, %51
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %42, %40, %22
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
