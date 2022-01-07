; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_put_attenuation_into_ranges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_put_attenuation_into_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32*, i32*)* @b43_put_attenuation_into_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_put_attenuation_into_ranges(%struct.b43_wldev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_txpower_lo_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %22, align 8
  store %struct.b43_txpower_lo_control* %23, %struct.b43_txpower_lo_control** %9, align 8
  %24 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %9, align 8
  %25 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %9, align 8
  %29 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %9, align 8
  %33 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %9, align 8
  %37 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %3, %84, %93, %102, %111
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 4
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %117

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %117

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %117

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %117

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %40

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %40

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %8, align 4
  br label %40

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %8, align 4
  br label %40

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %79, %69, %59, %49
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @clamp_val(i32 %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @clamp_val(i32 %123, i32 %124, i32 %125)
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
