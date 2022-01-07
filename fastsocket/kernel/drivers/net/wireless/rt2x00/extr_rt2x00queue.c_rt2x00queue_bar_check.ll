; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_bar_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_bar_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_bar = type { i32, i32, i32, i32, i32 }
%struct.rt2x00_bar_list_entry = type { i32, i32, i32, i32, i32, i64, %struct.queue_entry* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt2x00queue_bar_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_bar_check(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.ieee80211_bar*, align 8
  %5 = alloca %struct.rt2x00_bar_list_entry*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %6 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %7 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %3, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %23, %struct.ieee80211_bar** %4, align 8
  %24 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee80211_is_back_req(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %81

34:                                               ; preds = %1
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.rt2x00_bar_list_entry* @kmalloc(i32 40, i32 %35)
  store %struct.rt2x00_bar_list_entry* %36, %struct.rt2x00_bar_list_entry** %5, align 8
  %37 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %38 = icmp ne %struct.rt2x00_bar_list_entry* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %81

40:                                               ; preds = %34
  %41 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %42 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %43 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %42, i32 0, i32 6
  store %struct.queue_entry* %41, %struct.queue_entry** %43, align 8
  %44 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %47 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %48, i32 %51, i32 4)
  %53 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %54 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %55, i32 %58, i32 4)
  %60 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %64 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %69 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.rt2x00_bar_list_entry*, %struct.rt2x00_bar_list_entry** %5, align 8
  %74 = getelementptr inbounds %struct.rt2x00_bar_list_entry, %struct.rt2x00_bar_list_entry* %73, i32 0, i32 0
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 1
  %77 = call i32 @list_add_tail_rcu(i32* %74, i32* %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  br label %81

81:                                               ; preds = %40, %39, %33
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_back_req(i32) #1

declare dso_local %struct.rt2x00_bar_list_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
