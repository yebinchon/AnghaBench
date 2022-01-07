; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_update_sta_ps2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_update_sta_ps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32 }

@WLAN_STA_PS = common dso_local global i32 0, align 4
@DEBUG_PS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"STA %pM changed to use PS mode (type=0x%02X, stype=0x%02X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"STA %pM changed to not use PS mode (type=0x%02X, stype=0x%02X)\0A\00", align 1
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PSPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sta_info*, i32, i32, i32)* @hostap_update_sta_ps2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_update_sta_ps2(i32* %0, %struct.sta_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %5
  %14 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WLAN_STA_PS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @WLAN_STA_PS, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @DEBUG_PS2, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 2
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 4
  %34 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  br label %74

35:                                               ; preds = %13, %5
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %73, label %38

38:                                               ; preds = %35
  %39 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WLAN_STA_PS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %38
  %46 = load i32, i32* @WLAN_STA_PS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @DEBUG_PS2, align 4
  %53 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 4
  %60 = call i32 @PDEBUG(i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @IEEE80211_STYPE_PSPOLL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %45
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %71 = call i32 @schedule_packet_send(i32* %69, %struct.sta_info* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %38, %35
  br label %74

74:                                               ; preds = %73, %20
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @schedule_packet_send(i32*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
