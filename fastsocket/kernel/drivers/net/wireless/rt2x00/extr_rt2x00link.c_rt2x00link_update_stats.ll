; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.link }
%struct.link = type { i8*, %struct.link_ant, %struct.link_qual }
%struct.link_ant = type { i8* }
%struct.link_qual = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rxdone_entry_desc = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@RXDONE_MY_BSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00link_update_stats(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.rxdone_entry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxdone_entry_desc*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.link_qual*, align 8
  %9 = alloca %struct.link_ant*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rxdone_entry_desc* %2, %struct.rxdone_entry_desc** %6, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 1
  store %struct.link* %12, %struct.link** %7, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 2
  store %struct.link_qual* %15, %struct.link_qual** %8, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 1
  store %struct.link_ant* %18, %struct.link_ant** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %10, align 8
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %65

28:                                               ; preds = %3
  %29 = load %struct.link_qual*, %struct.link_qual** %8, align 8
  %30 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ieee80211_is_beacon(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %40 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RXDONE_MY_BSS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %28
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.link*, %struct.link** %7, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %51 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @MOVING_AVERAGE(i8* %49, i32 %52)
  %54 = load %struct.link*, %struct.link** %7, align 8
  %55 = getelementptr inbounds %struct.link, %struct.link* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %57 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %60 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @MOVING_AVERAGE(i8* %58, i32 %61)
  %63 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %64 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %46, %45, %27
  ret void
}

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i8* @MOVING_AVERAGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
