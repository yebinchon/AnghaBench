; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_reapply_tx_cal_coeffs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_reapply_tx_cal_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_reapply_tx_cal_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_reapply_tx_cal_coeffs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %3, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %27 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %15, %1
  br label %101

36:                                               ; preds = %25
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @B43_NTAB16(i32 15, i32 80)
  %39 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %40 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %37, i32 %38, i32 7, i64* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %59, %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %50 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %62
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @B43_NTAB16(i32 15, i32 80)
  %68 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %69 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %66, i32 %67, i32 4, i64* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %79, %65
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @B43_NTAB16(i32 15, i32 88)
  %85 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %86 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %83, i32 %84, i32 4, i64* %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = call i32 @B43_NTAB16(i32 15, i32 85)
  %89 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 5
  %93 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %87, i32 %88, i32 2, i64* %92)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @B43_NTAB16(i32 15, i32 93)
  %96 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %97 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 5
  %100 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %94, i32 %95, i32 2, i64* %99)
  br label %101

101:                                              ; preds = %35, %82, %62
  ret void
}

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
