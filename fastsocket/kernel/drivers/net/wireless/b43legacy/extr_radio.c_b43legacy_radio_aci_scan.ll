; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_aci_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_aci_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i64, i64 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_aci_scan(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_phy*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  store %struct.b43legacy_phy* %12, %struct.b43legacy_phy** %4, align 8
  %13 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %14 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %4, align 8
  %23 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %157

27:                                               ; preds = %21
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = call i32 @b43legacy_phy_lock(%struct.b43legacy_wldev* %28)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %31 = call i32 @b43legacy_radio_lock(%struct.b43legacy_wldev* %30)
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %34 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %33, i32 2050)
  %35 = and i32 %34, 65532
  %36 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %32, i32 2050, i32 %35)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %38 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %40 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %41 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %39, i32 %40)
  %42 = and i32 %41, 32767
  %43 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %37, i32 %38, i32 %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %45 = call i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev* %44, i32 3, i32 8, i32 1)
  %46 = load i32, i32* %6, align 4
  %47 = sub i32 %46, 5
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 %50, 5
  br label %53

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 1, %52 ]
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 5
  %57 = icmp ult i32 %56, 14
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 5
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 13, %61 ]
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %84, %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %70, %71
  %73 = call i32 @abs(i32 %72)
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @b43legacy_radio_aci_detect(%struct.b43legacy_wldev* %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %88, i32 %89, i32 0)
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %93 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %92, i32 2050)
  %94 = and i32 %93, 65532
  %95 = or i32 %94, 3
  %96 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %91, i32 2050, i32 %95)
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %99 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %98, i32 1027)
  %100 = and i32 %99, 65528
  %101 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %97, i32 1027, i32 %100)
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %103 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %104 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %105 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %106 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %104, i32 %105)
  %107 = or i32 %106, 32768
  %108 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %102, i32 %103, i32 %107)
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %110 = call i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev* %109)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %144, %87
  %112 = load i32, i32* %7, align 4
  %113 = icmp ult i32 %112, 13
  br i1 %113, label %114, label %147

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %144

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 5
  %124 = icmp ult i32 %123, 13
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 5
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i32 [ %127, %125 ], [ 13, %128 ]
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %140, %129
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %138
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %132

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %120
  %145 = load i32, i32* %7, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %111

147:                                              ; preds = %111
  %148 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %149 = call i32 @b43legacy_radio_unlock(%struct.b43legacy_wldev* %148)
  %150 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %151 = call i32 @b43legacy_phy_unlock(%struct.b43legacy_wldev* %150)
  %152 = load i32, i32* %6, align 4
  %153 = sub i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %147, %26
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @b43legacy_phy_lock(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_lock(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @b43legacy_radio_aci_detect(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_unlock(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_unlock(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
