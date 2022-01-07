; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_rev7.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.nphy_rf_control_override_rev7 = type { i32, i32, i32, i32 }

@__const.b43_nphy_rf_ctl_override_rev7.en_addrs = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 231, i32 236], [2 x i32] [i32 834, i32 835], [2 x i32] [i32 838, i32 839]], align 16
@.str = private unnamed_addr constant [27 x i8] c"Invalid override value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32)* @b43_nphy_rf_ctl_override_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nphy_rf_control_override_rev7*, align 8
  %14 = alloca [3 x [2 x i32]], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = bitcast [3 x [2 x i32]]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([3 x [2 x i32]]* @__const.b43_nphy_rf_ctl_override_rev7.en_addrs to i8*), i64 24, i1 false)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.nphy_rf_control_override_rev7* @b43_nphy_get_rf_ctl_over_rev7(%struct.b43_wldev* %21, i32 %22, i32 %23)
  store %struct.nphy_rf_control_override_rev7* %24, %struct.nphy_rf_control_override_rev7** %13, align 8
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %111, %6
  %26 = load i32, i32* %18, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %114

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %14, i64 0, i64 0
  %31 = bitcast [2 x i32]* %30 to i32**
  %32 = call i32 @ARRAY_SIZE(i32** %31)
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @b43err(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %114

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %14, i64 0, i64 %42
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %52 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %56 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @b43_phy_mask(%struct.b43_wldev* %63, i32 %64, i32 %66)
  %68 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %69 = icmp ne %struct.nphy_rf_control_override_rev7* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %74 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @b43_phy_mask(%struct.b43_wldev* %71, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  br label %110

79:                                               ; preds = %58
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %18, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %82, %79
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @b43_phy_set(%struct.b43_wldev* %89, i32 %90, i32 %91)
  %93 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %94 = icmp ne %struct.nphy_rf_control_override_rev7* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %99 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.nphy_rf_control_override_rev7*, %struct.nphy_rf_control_override_rev7** %13, align 8
  %104 = getelementptr inbounds %struct.nphy_rf_control_override_rev7, %struct.nphy_rf_control_override_rev7* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %102, %105
  %107 = call i32 @b43_phy_maskset(%struct.b43_wldev* %96, i32 %97, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %95, %88
  br label %109

109:                                              ; preds = %108, %82
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  br label %25

114:                                              ; preds = %34, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.nphy_rf_control_override_rev7* @b43_nphy_get_rf_ctl_over_rev7(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @b43err(i32, i8*, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
