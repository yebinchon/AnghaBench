; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_operations* }
%struct.b43_phy_operations = type { i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_exit(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_operations*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %6, align 8
  store %struct.b43_phy_operations* %7, %struct.b43_phy_operations** %3, align 8
  %8 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %8, i32 0, i32 1
  %10 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %9, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = call i32 %10(%struct.b43_wldev* %11, i32 1)
  %13 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %3, align 8
  %14 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %13, i32 0, i32 0
  %15 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %14, align 8
  %16 = icmp ne i32 (%struct.b43_wldev*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %3, align 8
  %19 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %18, i32 0, i32 0
  %20 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %19, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = call i32 %20(%struct.b43_wldev* %21)
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
