; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ops_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ops_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.brcms_info* }
%struct.brcms_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"wl: brcms_ops_stop: chipmatch failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @brcms_ops_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_ops_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.brcms_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  store %struct.brcms_info* %7, %struct.brcms_info** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %8)
  %10 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @brcms_c_chipmatch(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %28 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %15
  %33 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %34 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @brcms_err(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %50

41:                                               ; preds = %15
  %42 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %46 = call i32 @brcms_down(%struct.brcms_info* %45)
  %47 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %50

50:                                               ; preds = %41, %32, %14
  ret void
}

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @brcms_c_chipmatch(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @brcms_err(i32, i8*) #1

declare dso_local i32 @brcms_down(%struct.brcms_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
