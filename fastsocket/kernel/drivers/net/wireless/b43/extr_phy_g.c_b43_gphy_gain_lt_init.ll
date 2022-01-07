; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_gain_lt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_gain_lt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_gphy_gain_lt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_gain_lt_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca %struct.b43_txpower_lo_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  store %struct.b43_phy* %11, %struct.b43_phy** %3, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 1
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %13, align 8
  store %struct.b43_phy_g* %14, %struct.b43_phy_g** %4, align 8
  %15 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %16 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %15, i32 0, i32 0
  %17 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %16, align 8
  store %struct.b43_txpower_lo_control* %17, %struct.b43_txpower_lo_control** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %80, %1
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %21 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %76, %25
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %29 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 64
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %83

37:                                               ; preds = %33
  %38 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %39 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %49 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, 80
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %37
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 64
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %60 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 960, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @b43_phy_write(%struct.b43_wldev* %69, i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %26

79:                                               ; preds = %26
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %18

83:                                               ; preds = %36, %18
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
