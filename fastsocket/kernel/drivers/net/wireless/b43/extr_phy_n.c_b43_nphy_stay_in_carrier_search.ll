; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_stay_in_carrier_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_stay_in_carrier_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i32*, i32 }

@b43_nphy_stay_in_carrier_search.clip = internal constant [2 x i32] [i32 65535, i32 65535], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_stay_in_carrier_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_n*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %5, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %16 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %21, i32 0, i32 0)
  %23 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %24 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %25, i32 7, i32 0)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %27, i32* %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @b43_nphy_stay_in_carrier_search.clip, i64 0, i64 0))
  br label %34

34:                                               ; preds = %20, %14
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = call i32 @b43_nphy_reset_cca(%struct.b43_wldev* %35)
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %39 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %46 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %44, i32 7, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %51 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %49, i32* %52)
  br label %54

54:                                               ; preds = %43, %37
  br label %55

55:                                               ; preds = %54, %34
  ret void
}

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_nphy_write_clip_detection(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_nphy_reset_cca(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
