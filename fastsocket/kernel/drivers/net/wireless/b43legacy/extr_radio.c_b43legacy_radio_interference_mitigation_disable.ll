; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_interference_mitigation_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_interference_mitigation_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32*, i32, i32 }

@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAGS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_radio_interference_mitigation_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_radio_interference_mitigation_disable(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 1
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %5, align 8
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %150 [
    i32 128, label %14
    i32 129, label %73
  ]

14:                                               ; preds = %2
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %21, i32 1067)
  %23 = and i32 %22, -2049
  %24 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %20, i32 1067, i32 %23)
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %26 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %29 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %27, i32 %28)
  %30 = or i32 %29, 16384
  %31 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %25, i32 %26, i32 %30)
  br label %152

32:                                               ; preds = %14
  %33 = call i32 @phy_stackrestore(i32 120)
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %35 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %34)
  %36 = call i32 @phy_stackrestore(i32 1030)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %39 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %38, i32 1067)
  %40 = and i32 %39, -2049
  %41 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %37, i32 1067, i32 %40)
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %43 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %32
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %48 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %50 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %51 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %49, i32 %50)
  %52 = and i32 %51, -2049
  %53 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %47, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %46, %32
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %56 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %58 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %59 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %57, i32 %58)
  %60 = or i32 %59, 16384
  %61 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %55, i32 %56, i32 %60)
  %62 = call i32 @phy_stackrestore(i32 1184)
  %63 = call i32 @phy_stackrestore(i32 1185)
  %64 = call i32 @phy_stackrestore(i32 1186)
  %65 = call i32 @phy_stackrestore(i32 1192)
  %66 = call i32 @phy_stackrestore(i32 1195)
  %67 = call i32 @phy_stackrestore(i32 1191)
  %68 = call i32 @phy_stackrestore(i32 1187)
  %69 = call i32 @phy_stackrestore(i32 1193)
  %70 = call i32 @phy_stackrestore(i32 1171)
  %71 = call i32 @phy_stackrestore(i32 1194)
  %72 = call i32 @phy_stackrestore(i32 1196)
  br label %152

73:                                               ; preds = %2
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %75 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %74, i32 51)
  %76 = and i32 %75, 2048
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %152

79:                                               ; preds = %73
  %80 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %81 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %80, i32 0, i32 2
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @B43legacy_PHY_RADIO_BITFIELD, align 4
  %83 = call i32 @phy_stackrestore(i32 %82)
  %84 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %85 = call i32 @phy_stackrestore(i32 %84)
  %86 = call i32 @phy_stackrestore(i32 51)
  %87 = call i32 @phy_stackrestore(i32 1187)
  %88 = call i32 @phy_stackrestore(i32 1193)
  %89 = call i32 @phy_stackrestore(i32 1171)
  %90 = call i32 @phy_stackrestore(i32 1194)
  %91 = call i32 @phy_stackrestore(i32 1196)
  %92 = call i32 @phy_stackrestore(i32 1184)
  %93 = call i32 @phy_stackrestore(i32 1191)
  %94 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %95 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %79
  %99 = call i32 @phy_stackrestore(i32 1216)
  %100 = call i32 @phy_stackrestore(i32 1217)
  br label %103

101:                                              ; preds = %79
  %102 = call i32 @phy_stackrestore(i32 1030)
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i32 @phy_stackrestore(i32 1185)
  %105 = call i32 @phy_stackrestore(i32 1195)
  %106 = call i32 @phy_stackrestore(i32 1192)
  %107 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %108 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = call i32 @phy_stackrestore(i32 1197)
  %113 = call i32 @phy_stackrestore(i32 1198)
  br label %127

114:                                              ; preds = %103
  %115 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %116 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 3
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = call i32 @phy_stackrestore(i32 1197)
  %121 = call i32 @phy_stackrestore(i32 1045)
  %122 = call i32 @phy_stackrestore(i32 1046)
  %123 = call i32 @phy_stackrestore(i32 1047)
  %124 = call i32 @ilt_stackrestore(i32 6658)
  %125 = call i32 @ilt_stackrestore(i32 6659)
  br label %126

126:                                              ; preds = %119, %114
  br label %127

127:                                              ; preds = %126, %111
  %128 = call i32 @phy_stackrestore(i32 1186)
  %129 = call i32 @phy_stackrestore(i32 1192)
  %130 = call i32 @phy_stackrestore(i32 1067)
  %131 = call i32 @phy_stackrestore(i32 1164)
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %133 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %134 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %135 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %132, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, 2048
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %127
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, -2049
  store i32 %141, i32* %6, align 4
  %142 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %143 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %144 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %127
  %148 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %149 = call i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev* %148)
  br label %152

150:                                              ; preds = %2
  %151 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %152

152:                                              ; preds = %150, %147, %78, %54, %19
  ret void
}

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @phy_stackrestore(i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ilt_stackrestore(i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev*) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
