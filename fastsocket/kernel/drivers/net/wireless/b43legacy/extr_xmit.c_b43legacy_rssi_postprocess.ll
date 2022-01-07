; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_rssi_postprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_rssi_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32*, i32 }

@B43legacy_BFL_RSSI = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i32, i32, i32, i32)* @b43legacy_rssi_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_rssi_postprocess(%struct.b43legacy_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43legacy_phy*, align 8
  %12 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 1
  store %struct.b43legacy_phy* %14, %struct.b43legacy_phy** %11, align 8
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %11, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %107 [
    i32 8272, label %18
    i32 8288, label %98
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 127
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %26, 256
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %29, 73
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sdiv i32 %31, 64
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 25
  store i32 %37, i32* %12, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 3
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %97

42:                                               ; preds = %18
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %44 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @B43legacy_BFL_RSSI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 63
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 63, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %11, align 8
  %60 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 31, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, -131
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %70, 128
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %72, 57
  store i32 %73, i32* %12, align 4
  br label %84

74:                                               ; preds = %42
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 31, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, -149
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sdiv i32 %80, 128
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, 68
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %74, %58
  %85 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %11, align 8
  %86 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @B43legacy_PHYTYPE_G, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 25
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %90, %84
  br label %97

97:                                               ; preds = %96, %41
  br label %124

98:                                               ; preds = %5
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 127
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 256
  store i32 %103, i32* %12, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %101
  br label %124

107:                                              ; preds = %5
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, 11
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %111, 103
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sdiv i32 %113, 64
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %118, 109
  store i32 %119, i32* %12, align 4
  br label %123

120:                                              ; preds = %107
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 83
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %106, %97
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
