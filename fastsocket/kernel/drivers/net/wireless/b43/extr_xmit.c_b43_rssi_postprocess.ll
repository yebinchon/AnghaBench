; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_rssi_postprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_xmit.c_b43_rssi_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__*, %struct.b43_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32* }

@B43_BFL_RSSI = common dso_local global i32 0, align 4
@B43_PHYTYPE_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32, i32)* @b43_rssi_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_rssi_postprocess(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43_phy*, align 8
  %12 = alloca %struct.b43_phy_g*, align 8
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  store %struct.b43_phy* %15, %struct.b43_phy** %11, align 8
  %16 = load %struct.b43_phy*, %struct.b43_phy** %11, align 8
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 2
  %18 = load %struct.b43_phy_g*, %struct.b43_phy_g** %17, align 8
  store %struct.b43_phy_g* %18, %struct.b43_phy_g** %12, align 8
  %19 = load %struct.b43_phy*, %struct.b43_phy** %11, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %117 [
    i32 8272, label %22
    i32 8288, label %108
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 256
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %33, 73
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sdiv i32 %35, 64
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 25
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %43, 3
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %107

46:                                               ; preds = %22
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %48 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @B43_BFL_RSSI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 63
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 63, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.b43_phy*, %struct.b43_phy** %11, align 8
  %63 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @B43_PHYTYPE_G, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @B43_WARN_ON(i32 %67)
  %69 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  %70 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 31, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %78, -131
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sdiv i32 %80, 128
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, 57
  store i32 %83, i32* %13, align 4
  br label %94

84:                                               ; preds = %46
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 31, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, -149
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sdiv i32 %90, 128
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %92, 68
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %84, %61
  %95 = load %struct.b43_phy*, %struct.b43_phy** %11, align 8
  %96 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @B43_PHYTYPE_G, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 25
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %100, %94
  br label %107

107:                                              ; preds = %106, %45
  br label %134

108:                                              ; preds = %5
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %109, 127
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 256
  store i32 %113, i32* %13, align 4
  br label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %114, %111
  br label %134

117:                                              ; preds = %5
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %119, 11
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = mul nsw i32 %121, 103
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sdiv i32 %123, 64
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 109
  store i32 %129, i32* %13, align 4
  br label %133

130:                                              ; preds = %117
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 83
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %116, %107
  %135 = load i32, i32* %13, align 4
  ret i32 %135
}

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
