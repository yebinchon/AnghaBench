; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_prepare_adjusted_power_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_prepare_adjusted_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_prepare_adjusted_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %3, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %24 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %146, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %149

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %84 [
    i32 0, label %38
    i32 1, label %60
    i32 2, label %68
    i32 3, label %76
  ]

38:                                               ; preds = %36
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 5
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 68, i32* %4, align 4
  br label %59

51:                                               ; preds = %44, %38
  store i32 1, i32* %5, align 4
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 52, i32 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %50
  br label %84

60:                                               ; preds = %36
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 76, i32 28
  store i32 %67, i32* %4, align 4
  br label %84

68:                                               ; preds = %36
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 84, i32 36
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %36
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 92, i32 44
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %36, %76, %68, %60, %59
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %142, %84
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 20
  br i1 %87, label %88, label %145

88:                                               ; preds = %85
  %89 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %97 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = mul nsw i32 4, %99
  %101 = add nsw i32 4, %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  store i32 %95, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %88
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %88
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 14
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = sub nsw i32 1, %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %138, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %138, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 7
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 11
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %132, %129, %126, %123, %120
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %85

145:                                              ; preds = %85
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %33

149:                                              ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
