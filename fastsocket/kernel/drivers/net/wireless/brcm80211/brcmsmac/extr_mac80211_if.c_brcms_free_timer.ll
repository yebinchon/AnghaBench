; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_free_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_free_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_timer = type { %struct.brcms_timer*, %struct.brcms_timer*, %struct.brcms_info* }
%struct.brcms_info = type { %struct.brcms_timer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_free_timer(%struct.brcms_timer* %0) #0 {
  %2 = alloca %struct.brcms_timer*, align 8
  %3 = alloca %struct.brcms_info*, align 8
  %4 = alloca %struct.brcms_timer*, align 8
  store %struct.brcms_timer* %0, %struct.brcms_timer** %2, align 8
  %5 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %5, i32 0, i32 2
  %7 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  store %struct.brcms_info* %7, %struct.brcms_info** %3, align 8
  %8 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %9 = call i32 @brcms_del_timer(%struct.brcms_timer* %8)
  %10 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 0
  %12 = load %struct.brcms_timer*, %struct.brcms_timer** %11, align 8
  %13 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %14 = icmp eq %struct.brcms_timer* %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %16, i32 0, i32 0
  %18 = load %struct.brcms_timer*, %struct.brcms_timer** %17, align 8
  %19 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %18, i32 0, i32 0
  %20 = load %struct.brcms_timer*, %struct.brcms_timer** %19, align 8
  %21 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %21, i32 0, i32 0
  store %struct.brcms_timer* %20, %struct.brcms_timer** %22, align 8
  %23 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %24 = call i32 @kfree(%struct.brcms_timer* %23)
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.brcms_info*, %struct.brcms_info** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %26, i32 0, i32 0
  %28 = load %struct.brcms_timer*, %struct.brcms_timer** %27, align 8
  store %struct.brcms_timer* %28, %struct.brcms_timer** %4, align 8
  br label %29

29:                                               ; preds = %46, %25
  %30 = load %struct.brcms_timer*, %struct.brcms_timer** %4, align 8
  %31 = icmp ne %struct.brcms_timer* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.brcms_timer*, %struct.brcms_timer** %4, align 8
  %34 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %33, i32 0, i32 0
  %35 = load %struct.brcms_timer*, %struct.brcms_timer** %34, align 8
  %36 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %37 = icmp eq %struct.brcms_timer* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %40 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %39, i32 0, i32 0
  %41 = load %struct.brcms_timer*, %struct.brcms_timer** %40, align 8
  %42 = load %struct.brcms_timer*, %struct.brcms_timer** %4, align 8
  %43 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %42, i32 0, i32 0
  store %struct.brcms_timer* %41, %struct.brcms_timer** %43, align 8
  %44 = load %struct.brcms_timer*, %struct.brcms_timer** %2, align 8
  %45 = call i32 @kfree(%struct.brcms_timer* %44)
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.brcms_timer*, %struct.brcms_timer** %4, align 8
  %48 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %47, i32 0, i32 0
  %49 = load %struct.brcms_timer*, %struct.brcms_timer** %48, align 8
  store %struct.brcms_timer* %49, %struct.brcms_timer** %4, align 8
  br label %29

50:                                               ; preds = %15, %38, %29
  ret void
}

declare dso_local i32 @brcms_del_timer(%struct.brcms_timer*) #1

declare dso_local i32 @kfree(%struct.brcms_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
