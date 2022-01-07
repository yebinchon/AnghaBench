; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_spur_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_spur_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64, i64 }

@__const.b43_nphy_spur_workaround.tone = private unnamed_addr constant [2 x i32] [i32 57, i32 58], align 4
@__const.b43_nphy_spur_workaround.noise = private unnamed_addr constant [2 x i32] [i32 1023, i32 1023], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_spur_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_spur_workaround(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_spur_workaround.tone to i8*), i64 8, i1 false)
  %16 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_spur_workaround.noise to i8*), i64 8, i1 false)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 3
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43_WARN_ON(i32 %22)
  %24 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %25 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %47

46:                                               ; preds = %39, %36
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %50 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 54
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 32, i32* %57, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 607, i32* %58, align 4
  br label %99

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 38
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 102
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 118
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62, %59
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %70, align 4
  br label %98

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 134
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 32, i32* %75, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 543, i32* %76, align 4
  br label %97

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 151
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 16, i32* %81, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 575, i32* %82, align 4
  br label %96

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 153
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 161
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %83
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 48, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 575, i32* %91, align 4
  br label %95

92:                                               ; preds = %86
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %56
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %109

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %48
  %111 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %112 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %116, i32 0)
  br label %118

118:                                              ; preds = %115, %110
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
