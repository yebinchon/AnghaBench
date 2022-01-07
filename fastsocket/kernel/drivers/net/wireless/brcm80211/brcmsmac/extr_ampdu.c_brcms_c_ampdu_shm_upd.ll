; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_shm_upd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_shm_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { i32, %struct.brcms_c_info* }
%struct.brcms_c_info = type { i32 }

@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@M_MIMO_MAXSYM = common dso_local global i32 0, align 4
@MIMO_MAXSYM_MAX = common dso_local global i32 0, align 4
@M_WATCHDOG_8TU = common dso_local global i32 0, align 4
@WATCHDOG_8TU_MAX = common dso_local global i32 0, align 4
@MIMO_MAXSYM_DEF = common dso_local global i32 0, align 4
@WATCHDOG_8TU_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_ampdu_shm_upd(%struct.ampdu_info* %0) #0 {
  %2 = alloca %struct.ampdu_info*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  store %struct.ampdu_info* %0, %struct.ampdu_info** %2, align 8
  %4 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  %5 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %4, i32 0, i32 1
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  store %struct.brcms_c_info* %6, %struct.brcms_c_info** %3, align 8
  %7 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  %8 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @M_MIMO_MAXSYM, align 4
  %19 = load i32, i32* @MIMO_MAXSYM_MAX, align 4
  %20 = call i32 @brcms_b_write_shm(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @M_WATCHDOG_8TU, align 4
  %25 = load i32, i32* @WATCHDOG_8TU_MAX, align 4
  %26 = call i32 @brcms_b_write_shm(i32 %23, i32 %24, i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_MIMO_MAXSYM, align 4
  %32 = load i32, i32* @MIMO_MAXSYM_DEF, align 4
  %33 = call i32 @brcms_b_write_shm(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_WATCHDOG_8TU, align 4
  %38 = load i32, i32* @WATCHDOG_8TU_DEF, align 4
  %39 = call i32 @brcms_b_write_shm(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %14
  ret void
}

declare dso_local i32 @brcms_b_write_shm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
