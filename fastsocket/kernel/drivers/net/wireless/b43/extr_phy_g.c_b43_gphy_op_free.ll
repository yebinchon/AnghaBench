; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, %struct.b43_phy_g*, %struct.b43_phy_g* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_gphy_op_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_op_free(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %7, i32 0, i32 0
  %9 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  store %struct.b43_phy_g* %9, %struct.b43_phy_g** %4, align 8
  %10 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %11 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %10, i32 0, i32 2
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  %13 = call i32 @kfree(%struct.b43_phy_g* %12)
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %19, i32 0, i32 1
  %21 = load %struct.b43_phy_g*, %struct.b43_phy_g** %20, align 8
  %22 = call i32 @kfree(%struct.b43_phy_g* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %25 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 1
  store %struct.b43_phy_g* null, %struct.b43_phy_g** %27, align 8
  %28 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %29 = call i32 @kfree(%struct.b43_phy_g* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %31, i32 0, i32 0
  store %struct.b43_phy_g* null, %struct.b43_phy_g** %32, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.b43_phy_g*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
