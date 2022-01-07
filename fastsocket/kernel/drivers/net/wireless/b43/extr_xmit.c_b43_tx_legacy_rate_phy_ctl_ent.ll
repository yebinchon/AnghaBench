; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_tx_legacy_rate_phy_ctl_ent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_tx_legacy_rate_phy_ctl_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_tx_legacy_rate_phy_ctl_entry = type { i64 }

@b43_tx_legacy_rate_phy_ctl = common dso_local global %struct.b43_tx_legacy_rate_phy_ctl_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_tx_legacy_rate_phy_ctl_entry* (i64)* @b43_tx_legacy_rate_phy_ctl_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_tx_legacy_rate_phy_ctl_entry* @b43_tx_legacy_rate_phy_ctl_ent(i64 %0) #0 {
  %2 = alloca %struct.b43_tx_legacy_rate_phy_ctl_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.b43_tx_legacy_rate_phy_ctl_entry*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.b43_tx_legacy_rate_phy_ctl_entry*, %struct.b43_tx_legacy_rate_phy_ctl_entry** @b43_tx_legacy_rate_phy_ctl, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.b43_tx_legacy_rate_phy_ctl_entry* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.b43_tx_legacy_rate_phy_ctl_entry*, %struct.b43_tx_legacy_rate_phy_ctl_entry** @b43_tx_legacy_rate_phy_ctl, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.b43_tx_legacy_rate_phy_ctl_entry, %struct.b43_tx_legacy_rate_phy_ctl_entry* %12, i64 %14
  store %struct.b43_tx_legacy_rate_phy_ctl_entry* %15, %struct.b43_tx_legacy_rate_phy_ctl_entry** %4, align 8
  %16 = load %struct.b43_tx_legacy_rate_phy_ctl_entry*, %struct.b43_tx_legacy_rate_phy_ctl_entry** %4, align 8
  %17 = getelementptr inbounds %struct.b43_tx_legacy_rate_phy_ctl_entry, %struct.b43_tx_legacy_rate_phy_ctl_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.b43_tx_legacy_rate_phy_ctl_entry*, %struct.b43_tx_legacy_rate_phy_ctl_entry** %4, align 8
  store %struct.b43_tx_legacy_rate_phy_ctl_entry* %22, %struct.b43_tx_legacy_rate_phy_ctl_entry** %2, align 8
  br label %29

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  %28 = call i32 @B43_WARN_ON(i32 1)
  store %struct.b43_tx_legacy_rate_phy_ctl_entry* null, %struct.b43_tx_legacy_rate_phy_ctl_entry** %2, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = load %struct.b43_tx_legacy_rate_phy_ctl_entry*, %struct.b43_tx_legacy_rate_phy_ctl_entry** %2, align 8
  ret %struct.b43_tx_legacy_rate_phy_ctl_entry* %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.b43_tx_legacy_rate_phy_ctl_entry*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
