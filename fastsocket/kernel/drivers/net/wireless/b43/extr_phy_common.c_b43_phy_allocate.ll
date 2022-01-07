; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}* }
%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.TYPE_7__* }

@b43_phyops_a = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_g = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@b43_phyops_ht = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_lcn = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_lp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_n = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_phy_allocate(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %4, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %23 [
    i32 133, label %13
    i32 132, label %16
    i32 128, label %19
    i32 129, label %20
    i32 131, label %21
    i32 130, label %22
  ]

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  store %struct.TYPE_7__* @b43_phyops_a, %struct.TYPE_7__** %15, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 1
  store %struct.TYPE_7__* @b43_phyops_g, %struct.TYPE_7__** %18, align 8
  br label %23

19:                                               ; preds = %1
  br label %23

20:                                               ; preds = %1
  br label %23

21:                                               ; preds = %1
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22, %21, %20, %19, %16, %13
  %24 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @B43_WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %23
  %36 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %37 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.b43_wldev*)**
  %41 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %40, align 8
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 %41(%struct.b43_wldev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %48, align 8
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %32
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
