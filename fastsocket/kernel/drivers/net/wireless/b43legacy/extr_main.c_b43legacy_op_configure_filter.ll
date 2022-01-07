; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.b43legacy_wl = type { i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @b43legacy_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_wl*, align 8
  %10 = alloca %struct.b43legacy_wldev*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %12)
  store %struct.b43legacy_wl* %13, %struct.b43legacy_wl** %9, align 8
  %14 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %14, i32 0, i32 2
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %15, align 8
  store %struct.b43legacy_wldev* %16, %struct.b43legacy_wldev** %10, align 8
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %18 = icmp ne %struct.b43legacy_wldev* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %23 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %22, i32 0, i32 1
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %27 = load i32, i32* @FIF_ALLMULTI, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FIF_FCSFAIL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FIF_PLCPFAIL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FIF_CONTROL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FIF_OTHER_BSS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %43 = load i32, i32* @FIF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FIF_FCSFAIL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FIF_PLCPFAIL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FIF_CONTROL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FIF_OTHER_BSS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %60 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %21
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %65 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %64)
  %66 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %70 = call i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev* %69)
  br label %71

71:                                               ; preds = %68, %63, %21
  %72 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %9, align 8
  %73 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %72, i32 0, i32 1
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %19
  ret void
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
