; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_fops_ps_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_fops_ps_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i32, i32, i32 }

@PS_DISABLED = common dso_local global i64 0, align 8
@PS_ENABLED = common dso_local global i64 0, align 8
@PS_AUTO_POLL = common dso_local global i64 0, align 8
@PS_MANUAL_POLL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@hwsim_send_ps_poll = common dso_local global i32 0, align 4
@hwsim_send_nullfunc_ps = common dso_local global i32 0, align 4
@hwsim_send_nullfunc_no_ps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @hwsim_fops_ps_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_fops_ps_write(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mac80211_hwsim_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mac80211_hwsim_data*
  store %struct.mac80211_hwsim_data* %9, %struct.mac80211_hwsim_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PS_DISABLED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PS_ENABLED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PS_AUTO_POLL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PS_MANUAL_POLL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %21, %17, %13, %2
  %29 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %30 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %35 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @PS_MANUAL_POLL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %41 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %44 = load i32, i32* @hwsim_send_ps_poll, align 4
  %45 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %46 = call i32 @ieee80211_iterate_active_interfaces(i32 %42, i32 %43, i32 %44, %struct.mac80211_hwsim_data* %45)
  %47 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %48 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %85

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @PS_DISABLED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @PS_DISABLED, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %60 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %63 = load i32, i32* @hwsim_send_nullfunc_ps, align 4
  %64 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %65 = call i32 @ieee80211_iterate_active_interfaces(i32 %61, i32 %62, i32 %63, %struct.mac80211_hwsim_data* %64)
  br label %84

66:                                               ; preds = %54, %49
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* @PS_DISABLED, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @PS_DISABLED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %77 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %80 = load i32, i32* @hwsim_send_nullfunc_no_ps, align 4
  %81 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %6, align 8
  %82 = call i32 @ieee80211_iterate_active_interfaces(i32 %78, i32 %79, i32 %80, %struct.mac80211_hwsim_data* %81)
  br label %83

83:                                               ; preds = %75, %71, %66
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %39
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @ieee80211_iterate_active_interfaces(i32, i32, i32, %struct.mac80211_hwsim_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
