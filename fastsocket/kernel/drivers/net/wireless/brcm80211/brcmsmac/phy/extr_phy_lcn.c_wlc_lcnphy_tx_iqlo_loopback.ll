; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@iqlo_loopback_rf_regs = common dso_local global i32* null, align 8
@RADIO_2064_REG03A = common dso_local global i32 0, align 4
@RADIO_2064_REG11A = common dso_local global i32 0, align 4
@RADIO_2064_REG036 = common dso_local global i32 0, align 4
@RADIO_2064_REG025 = common dso_local global i32 0, align 4
@RADIO_2064_REG028 = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@RADIO_2064_REG0FF = common dso_local global i32 0, align 4
@RADIO_2064_REG11F = common dso_local global i32 0, align 4
@RADIO_2064_REG00B = common dso_local global i32 0, align 4
@RADIO_2064_REG113 = common dso_local global i32 0, align 4
@RADIO_2064_REG007 = common dso_local global i32 0, align 4
@RADIO_2064_REG0FC = common dso_local global i32 0, align 4
@RADIO_2064_REG0FD = common dso_local global i32 0, align 4
@RADIO_2064_REG012 = common dso_local global i32 0, align 4
@RADIO_2064_REG059 = common dso_local global i32 0, align 4
@RADIO_2064_REG05C = common dso_local global i32 0, align 4
@RADIO_2064_REG078 = common dso_local global i32 0, align 4
@RADIO_2064_REG092 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32*)* @wlc_lcnphy_tx_iqlo_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tx_iqlo_loopback(%struct.brcms_phy* %0, i32* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 20
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %12 = load i32*, i32** @iqlo_loopback_rf_regs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @read_radio_reg(%struct.brcms_phy* %11, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %26, i32 1100, i32 4096, i32 4096)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = call i32 @mod_phy_reg(%struct.brcms_phy* %28, i32 1101, i32 16384, i32 16384)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = call i32 @mod_phy_reg(%struct.brcms_phy* %30, i32 1100, i32 2048, i32 2048)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = call i32 @mod_phy_reg(%struct.brcms_phy* %32, i32 1101, i32 8192, i32 0)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = call i32 @mod_phy_reg(%struct.brcms_phy* %34, i32 1083, i32 2, i32 2)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = call i32 @mod_phy_reg(%struct.brcms_phy* %36, i32 1084, i32 2, i32 0)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %39 = call i32 @mod_phy_reg(%struct.brcms_phy* %38, i32 1083, i32 1, i32 1)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = call i32 @mod_phy_reg(%struct.brcms_phy* %40, i32 1084, i32 1, i32 0)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @LCNREV_IS(i32 %45, i32 2)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = load i32, i32* @RADIO_2064_REG03A, align 4
  %51 = call i32 @and_radio_reg(%struct.brcms_phy* %49, i32 %50, i32 253)
  br label %56

52:                                               ; preds = %25
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = load i32, i32* @RADIO_2064_REG03A, align 4
  %55 = call i32 @and_radio_reg(%struct.brcms_phy* %53, i32 %54, i32 249)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = load i32, i32* @RADIO_2064_REG11A, align 4
  %59 = call i32 @or_radio_reg(%struct.brcms_phy* %57, i32 %58, i32 1)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = load i32, i32* @RADIO_2064_REG036, align 4
  %62 = call i32 @or_radio_reg(%struct.brcms_phy* %60, i32 %61, i32 1)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = load i32, i32* @RADIO_2064_REG11A, align 4
  %65 = call i32 @or_radio_reg(%struct.brcms_phy* %63, i32 %64, i32 24)
  %66 = call i32 @udelay(i32 20)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @LCNREV_IS(i32 %70, i32 2)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %56
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @CHSPEC_IS5G(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = load i32, i32* @RADIO_2064_REG03A, align 4
  %82 = call i32 @mod_radio_reg(%struct.brcms_phy* %80, i32 %81, i32 1, i32 0)
  br label %87

83:                                               ; preds = %73
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = load i32, i32* @RADIO_2064_REG03A, align 4
  %86 = call i32 @or_radio_reg(%struct.brcms_phy* %84, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %83, %79
  br label %103

88:                                               ; preds = %56
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @CHSPEC_IS5G(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = load i32, i32* @RADIO_2064_REG03A, align 4
  %97 = call i32 @mod_radio_reg(%struct.brcms_phy* %95, i32 %96, i32 3, i32 1)
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = load i32, i32* @RADIO_2064_REG03A, align 4
  %101 = call i32 @or_radio_reg(%struct.brcms_phy* %99, i32 %100, i32 3)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %87
  %104 = call i32 @udelay(i32 20)
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %106 = load i32, i32* @RADIO_2064_REG025, align 4
  %107 = call i32 @write_radio_reg(%struct.brcms_phy* %105, i32 %106, i32 15)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @LCNREV_IS(i32 %111, i32 2)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %103
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @CHSPEC_IS5G(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load i32, i32* @RADIO_2064_REG028, align 4
  %123 = call i32 @mod_radio_reg(%struct.brcms_phy* %121, i32 %122, i32 15, i32 4)
  br label %128

124:                                              ; preds = %114
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = load i32, i32* @RADIO_2064_REG028, align 4
  %127 = call i32 @mod_radio_reg(%struct.brcms_phy* %125, i32 %126, i32 15, i32 6)
  br label %128

128:                                              ; preds = %124, %120
  br label %144

129:                                              ; preds = %103
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %131 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @CHSPEC_IS5G(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = load i32, i32* @RADIO_2064_REG028, align 4
  %138 = call i32 @mod_radio_reg(%struct.brcms_phy* %136, i32 %137, i32 30, i32 8)
  br label %143

139:                                              ; preds = %129
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %141 = load i32, i32* @RADIO_2064_REG028, align 4
  %142 = call i32 @mod_radio_reg(%struct.brcms_phy* %140, i32 %141, i32 30, i32 12)
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %128
  %145 = call i32 @udelay(i32 20)
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %147 = load i32, i32* @RADIO_2064_REG005, align 4
  %148 = call i32 @write_radio_reg(%struct.brcms_phy* %146, i32 %147, i32 8)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = load i32, i32* @RADIO_2064_REG112, align 4
  %151 = call i32 @or_radio_reg(%struct.brcms_phy* %149, i32 %150, i32 128)
  %152 = call i32 @udelay(i32 20)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %154 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %155 = call i32 @or_radio_reg(%struct.brcms_phy* %153, i32 %154, i32 16)
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %157 = load i32, i32* @RADIO_2064_REG11F, align 4
  %158 = call i32 @or_radio_reg(%struct.brcms_phy* %156, i32 %157, i32 68)
  %159 = call i32 @udelay(i32 20)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %161 = load i32, i32* @RADIO_2064_REG00B, align 4
  %162 = call i32 @or_radio_reg(%struct.brcms_phy* %160, i32 %161, i32 7)
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %164 = load i32, i32* @RADIO_2064_REG113, align 4
  %165 = call i32 @or_radio_reg(%struct.brcms_phy* %163, i32 %164, i32 16)
  %166 = call i32 @udelay(i32 20)
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %168 = load i32, i32* @RADIO_2064_REG007, align 4
  %169 = call i32 @write_radio_reg(%struct.brcms_phy* %167, i32 %168, i32 1)
  %170 = call i32 @udelay(i32 20)
  store i32 678, i32* %5, align 4
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %172 = load i32, i32* @RADIO_2064_REG0FC, align 4
  %173 = load i32, i32* %5, align 4
  %174 = ashr i32 %173, 8
  %175 = and i32 %174, 3
  %176 = call i32 @mod_radio_reg(%struct.brcms_phy* %171, i32 %172, i32 3, i32 %175)
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = load i32, i32* @RADIO_2064_REG0FD, align 4
  %179 = load i32, i32* %5, align 4
  %180 = and i32 %179, 255
  %181 = call i32 @write_radio_reg(%struct.brcms_phy* %177, i32 %178, i32 %180)
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %183 = load i32, i32* @RADIO_2064_REG11F, align 4
  %184 = call i32 @or_radio_reg(%struct.brcms_phy* %182, i32 %183, i32 68)
  %185 = call i32 @udelay(i32 20)
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %187 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %188 = call i32 @or_radio_reg(%struct.brcms_phy* %186, i32 %187, i32 16)
  %189 = call i32 @udelay(i32 20)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %191 = load i32, i32* @RADIO_2064_REG012, align 4
  %192 = call i32 @write_radio_reg(%struct.brcms_phy* %190, i32 %191, i32 2)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %194 = load i32, i32* @RADIO_2064_REG112, align 4
  %195 = call i32 @or_radio_reg(%struct.brcms_phy* %193, i32 %194, i32 6)
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %197 = load i32, i32* @RADIO_2064_REG036, align 4
  %198 = call i32 @write_radio_reg(%struct.brcms_phy* %196, i32 %197, i32 17)
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %200 = load i32, i32* @RADIO_2064_REG059, align 4
  %201 = call i32 @write_radio_reg(%struct.brcms_phy* %199, i32 %200, i32 204)
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %203 = load i32, i32* @RADIO_2064_REG05C, align 4
  %204 = call i32 @write_radio_reg(%struct.brcms_phy* %202, i32 %203, i32 46)
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %206 = load i32, i32* @RADIO_2064_REG078, align 4
  %207 = call i32 @write_radio_reg(%struct.brcms_phy* %205, i32 %206, i32 215)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %209 = load i32, i32* @RADIO_2064_REG092, align 4
  %210 = call i32 @write_radio_reg(%struct.brcms_phy* %208, i32 %209, i32 21)
  ret void
}

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @and_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
