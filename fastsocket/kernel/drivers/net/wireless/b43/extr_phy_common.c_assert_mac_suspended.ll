; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_assert_mac_suspended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_assert_mac_suspended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64, i32 }

@B43_DEBUG = common dso_local global i32 0, align 4
@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"PHY/RADIO register access with enabled MAC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @assert_mac_suspended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_mac_suspended(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load i32, i32* @B43_DEBUG, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = call i64 @b43_status(%struct.b43_wldev* %7)
  %9 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @b43dbg(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @dump_stack()
  br label %22

22:                                               ; preds = %5, %16, %11, %6
  ret void
}

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
