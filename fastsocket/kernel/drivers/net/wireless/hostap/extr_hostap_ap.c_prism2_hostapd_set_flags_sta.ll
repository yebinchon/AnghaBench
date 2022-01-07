; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_set_flags_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_set_flags_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sta_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_data*, %struct.prism2_hostapd_param*)* @prism2_hostapd_set_flags_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_hostapd_set_flags_sta(%struct.ap_data* %0, %struct.prism2_hostapd_param* %1) #0 {
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
  %12 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %10, i32 %13)
  store %struct.sta_info* %14, %struct.sta_info** %6, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = icmp ne %struct.sta_info* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %19 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %28 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %17, %2
  %37 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %38 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = icmp ne %struct.sta_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
