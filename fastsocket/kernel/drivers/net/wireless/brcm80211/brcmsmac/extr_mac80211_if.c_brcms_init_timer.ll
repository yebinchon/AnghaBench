; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_init_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_timer = type { void (i8*)*, i64, %struct.brcms_timer*, i8*, %struct.brcms_info*, i32 }
%struct.brcms_info = type { %struct.brcms_timer* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_brcms_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcms_timer* @brcms_init_timer(%struct.brcms_info* %0, void (i8*)* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.brcms_timer*, align 8
  %6 = alloca %struct.brcms_info*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.brcms_timer*, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.brcms_timer* @kzalloc(i32 48, i32 %11)
  store %struct.brcms_timer* %12, %struct.brcms_timer** %10, align 8
  %13 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %14 = icmp ne %struct.brcms_timer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.brcms_timer* null, %struct.brcms_timer** %5, align 8
  br label %39

16:                                               ; preds = %4
  %17 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %18 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %17, i32 0, i32 5
  %19 = load i32, i32* @_brcms_timer, align 4
  %20 = call i32 @INIT_DELAYED_WORK(i32* %18, i32 %19)
  %21 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %22 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %23 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %22, i32 0, i32 4
  store %struct.brcms_info* %21, %struct.brcms_info** %23, align 8
  %24 = load void (i8*)*, void (i8*)** %7, align 8
  %25 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %26 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %25, i32 0, i32 0
  store void (i8*)* %24, void (i8*)** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %29 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %31 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %30, i32 0, i32 0
  %32 = load %struct.brcms_timer*, %struct.brcms_timer** %31, align 8
  %33 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %34 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %33, i32 0, i32 2
  store %struct.brcms_timer* %32, %struct.brcms_timer** %34, align 8
  %35 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  %36 = load %struct.brcms_info*, %struct.brcms_info** %6, align 8
  %37 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %36, i32 0, i32 0
  store %struct.brcms_timer* %35, %struct.brcms_timer** %37, align 8
  %38 = load %struct.brcms_timer*, %struct.brcms_timer** %10, align 8
  store %struct.brcms_timer* %38, %struct.brcms_timer** %5, align 8
  br label %39

39:                                               ; preds = %16, %15
  %40 = load %struct.brcms_timer*, %struct.brcms_timer** %5, align 8
  ret %struct.brcms_timer* %40
}

declare dso_local %struct.brcms_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
