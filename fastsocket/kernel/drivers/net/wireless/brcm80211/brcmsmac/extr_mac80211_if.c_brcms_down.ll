; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_down(%struct.brcms_info* %0) #0 {
  %2 = alloca %struct.brcms_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @brcms_c_down(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_bh(i32* %15)
  %17 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %17, i32 0, i32 1
  %19 = call i64 @atomic_read(i32* %18)
  %20 = load i64, i64* %3, align 8
  %21 = icmp sgt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @SPINWAIT(i32 %22, i32 100000)
  %24 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  ret void
}

declare dso_local i64 @brcms_c_down(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
