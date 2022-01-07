; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_check_bssid_list_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_check_bssid_list_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_80211_bssid_ex = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_80211_bssid_ex*, i32, i8*, i32)* @check_bssid_list_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bssid_list_item(%struct.ndis_80211_bssid_ex* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndis_80211_bssid_ex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ndis_80211_bssid_ex* %0, %struct.ndis_80211_bssid_ex** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ndis_80211_bssid_ex*, %struct.ndis_80211_bssid_ex** %6, align 8
  %13 = icmp ne %struct.ndis_80211_bssid_ex* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14, %4
  store i32 0, i32* %5, align 4
  br label %50

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %10, align 8
  %27 = load %struct.ndis_80211_bssid_ex*, %struct.ndis_80211_bssid_ex** %6, align 8
  %28 = bitcast %struct.ndis_80211_bssid_ex* %27 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %22
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = icmp sge i32 %45, 0
  br label %47

47:                                               ; preds = %39, %22
  %48 = phi i1 [ false, %22 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
