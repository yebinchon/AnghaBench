; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_ps_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_ps_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wl%d: hps %d\0A\00", align 1
@maccontrol = common dso_local global i32 0, align 4
@MCTL_WAKE = common dso_local global i32 0, align 4
@MCTL_HPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_set_ps_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_set_ps_ctrl(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = call i32 @brcms_c_ps_allowed(%struct.brcms_c_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @brcms_dbg_mac80211(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @maccontrol, align 4
  %27 = call i32 @D11REGOFFS(i32 %26)
  %28 = call i32 @bcma_read32(i32 %25, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @MCTL_WAKE, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @MCTL_HPS, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* @MCTL_WAKE, align 4
  %41 = load i32, i32* @MCTL_HPS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @brcms_b_mctrl(%struct.TYPE_5__* %39, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MCTL_WAKE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MCTL_HPS, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %49, %36
  %55 = phi i1 [ true, %36 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @brcms_b_wait_for_wake(%struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @brcms_c_ps_allowed(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_dbg_mac80211(i32, i8*, i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_b_mctrl(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @brcms_b_wait_for_wake(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
