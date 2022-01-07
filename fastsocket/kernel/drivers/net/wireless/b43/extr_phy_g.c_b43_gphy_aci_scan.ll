; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_aci_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_aci_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i64, i64 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_G_CRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gphy_aci_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_aci_scan(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  store %struct.b43_phy* %12, %struct.b43_phy** %4, align 8
  %13 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B43_PHYTYPE_G, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %139

27:                                               ; preds = %21
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = call i32 @b43_phy_lock(%struct.b43_wldev* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = call i32 @b43_radio_lock(%struct.b43_wldev* %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = call i32 @b43_phy_mask(%struct.b43_wldev* %32, i32 2050, i32 65532)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_PHY_G_CRS, align 4
  %36 = call i32 @b43_phy_mask(%struct.b43_wldev* %34, i32 %35, i32 32767)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = call i32 @b43_set_all_gains(%struct.b43_wldev* %37, i32 3, i32 8, i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = sub i32 %39, 5
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, 5
  br label %46

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %45 ]
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 5
  %50 = icmp ult i32 %49, 14
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 5
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 13, %54 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %77, %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub i32 %63, %64
  %66 = call i32 @abs(i32 %65)
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @b43_gphy_aci_detect(%struct.b43_wldev* %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = sub i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @b43_switch_channel(%struct.b43_wldev* %81, i32 %82)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = call i32 @b43_phy_maskset(%struct.b43_wldev* %84, i32 2050, i32 65532, i32 3)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = call i32 @b43_phy_mask(%struct.b43_wldev* %86, i32 1027, i32 65528)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = load i32, i32* @B43_PHY_G_CRS, align 4
  %90 = call i32 @b43_phy_set(%struct.b43_wldev* %88, i32 %89, i32 32768)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = call i32 @b43_set_original_gains(%struct.b43_wldev* %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %126, %80
  %94 = load i32, i32* %7, align 4
  %95 = icmp ult i32 %94, 13
  br i1 %95, label %96, label %129

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %126

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 5
  %106 = icmp ult i32 %105, 13
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 5
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i32 [ %109, %107 ], [ 13, %110 ]
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %122, %111
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %120
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %114

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %102
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %93

129:                                              ; preds = %93
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = call i32 @b43_radio_unlock(%struct.b43_wldev* %130)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = call i32 @b43_phy_unlock(%struct.b43_wldev* %132)
  %134 = load i32, i32* %6, align 4
  %135 = sub i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %129, %26
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @b43_phy_lock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_lock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_set_all_gains(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @b43_gphy_aci_detect(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_set_original_gains(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_unlock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_unlock(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
