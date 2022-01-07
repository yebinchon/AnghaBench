; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_remove_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_remove_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.prism2_hostapd_param = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_data*, %struct.prism2_hostapd_param*)* @prism2_hostapd_remove_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_hostapd_remove_sta(%struct.ap_data* %0, %struct.prism2_hostapd_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_data*, align 8
  %5 = alloca %struct.prism2_hostapd_param*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %4, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %5, align 8
  %7 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %8 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %11 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %12 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %10, i32 %13)
  store %struct.sta_info* %14, %struct.sta_info** %6, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = icmp ne %struct.sta_info* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = call i32 @ap_sta_hash_del(%struct.ap_data* %18, %struct.sta_info* %19)
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %26 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = icmp ne %struct.sta_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %24
  %34 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = call i32 @hostap_event_expired_sta(i32 %55, %struct.sta_info* %56)
  br label %58

58:                                               ; preds = %50, %45, %40, %33
  %59 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %60 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %61 = call i32 @ap_free_sta(%struct.ap_data* %59, %struct.sta_info* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @ap_sta_hash_del(%struct.ap_data*, %struct.sta_info*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hostap_event_expired_sta(i32, %struct.sta_info*) #1

declare dso_local i32 @ap_free_sta(%struct.ap_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
