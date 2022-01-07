; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcore_setstate_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcore_setstate_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS = common dso_local global i32 0, align 4
@NPHY_REV3_RFSEQ_CMD_NOP = common dso_local global i32 0, align 4
@NPHY_REV3_RFSEQ_CMD_END = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RESET2RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_rxcore_setstate_nphy(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcms_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %12 = bitcast %struct.brcms_phy_pub* %11 to %struct.brcms_phy*
  store %struct.brcms_phy* %12, %struct.brcms_phy** %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %174

25:                                               ; preds = %2
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @maccontrol, align 4
  %30 = call i32 @D11REGOFFS(i32 %29)
  %31 = call i32 @bcma_read32(i32 %28, i32 %30)
  %32 = load i32, i32* @MCTL_EN_MAC, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 0, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %25
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wlapi_suspend_mac_and_wait(i32 %43)
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %52 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %51, i32 1)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %55 = call i32 @read_phy_reg(%struct.brcms_phy* %54, i32 162)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, -241
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @write_phy_reg(%struct.brcms_phy* %63, i32 162, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %126

69:                                               ; preds = %53
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %71 = call i32 @write_phy_reg(%struct.brcms_phy* %70, i32 526, i32 1)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @NREV_GE(i32 %75, i32 3)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %69
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %124

83:                                               ; preds = %78
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %85 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %87 = call i64 @ARRAY_SIZE(i32* %86)
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %89 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %84, i32 %85, i64 %87, i32 80, i32 16, i32* %88)
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %120, %83
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %93 = call i64 @ARRAY_SIZE(i32* %92)
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i64, i64* %7, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @NPHY_REV3_RFSEQ_CMD_NOP, align 4
  store i32 %106, i32* %9, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %108 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %107, i32 %108, i32 1, i64 %109, i32 16, i32* %9)
  br label %123

111:                                              ; preds = %95
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NPHY_REV3_RFSEQ_CMD_END, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %123

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %90

123:                                              ; preds = %117, %101, %90
  br label %124

124:                                              ; preds = %123, %78
  br label %125

125:                                              ; preds = %124, %69
  br label %153

126:                                              ; preds = %53
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %128 = call i32 @write_phy_reg(%struct.brcms_phy* %127, i32 526, i32 30)
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @NREV_GE(i32 %132, i32 3)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %126
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %137 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load i32, i32* @NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %143 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %142, i32 %143, i32 1, i64 %147, i32 16, i32* %9)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 0
  store i32 -1, i32* %150, align 8
  br label %151

151:                                              ; preds = %140, %135
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %125
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %155 = load i32, i32* @NPHY_RFSEQ_RESET2RX, align 4
  %156 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %154, i32 %155)
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %163 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %162, i32 0)
  br label %164

164:                                              ; preds = %161, %153
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %169 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @wlapi_enable_mac(i32 %172)
  br label %174

174:                                              ; preds = %24, %167, %164
  ret void
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
