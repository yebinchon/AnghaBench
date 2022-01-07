; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_coeff_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_coeff_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4
@nphy_tpc_loscale = common dso_local global i32* null, align 8
@M_CURR_IDX1 = common dso_local global i32 0, align 4
@M_CURR_IDX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txpwrctrl_coeff_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpwrctrl_coeff_setup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [128 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %26 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %24, i32 15, i32 7, i32 80, i32 16, i32* %25)
  store i32 128, i32* %13, align 4
  store i32 320, i32* %14, align 4
  %27 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %74, %23
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 26
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = and i32 %37, 1023
  %39 = shl i32 %38, 10
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1023
  %43 = or i32 %39, %42
  br label %53

44:                                               ; preds = %32
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 1023
  %48 = shl i32 %47, 10
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1023
  %52 = or i32 %48, %51
  br label %53

53:                                               ; preds = %44, %35
  %54 = phi i32 [ %43, %35 ], [ %52, %44 ]
  store i32 %54, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %64, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %73 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %68, i32 %69, i32 %70, i32 %71, i32 32, i32* %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %28

77:                                               ; preds = %28
  store i32 448, i32* %14, align 4
  %78 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %154, %77
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %157

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 26
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 5
  %88 = load i32, i32* %87, align 4
  br label %92

89:                                               ; preds = %83
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 6
  %91 = load i32, i32* %90, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %88, %86 ], [ %91, %89 ]
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 255
  store i32 %98, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %144, %92
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %99
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @NREV_GE(i32 %107, i32 3)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %11, align 4
  br label %132

113:                                              ; preds = %103
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** @nphy_tpc_loscale, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %114, %119
  %121 = add nsw i32 %120, 128
  %122 = ashr i32 %121, 8
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32*, i32** @nphy_tpc_loscale, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %123, %128
  %130 = add nsw i32 %129, 128
  %131 = ashr i32 %130, 8
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %113, %110
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 255
  %135 = shl i32 %134, 8
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, 255
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 %142
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %132
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %99

147:                                              ; preds = %99
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %153 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %148, i32 %149, i32 %150, i32 %151, i32 32, i32* %152)
  br label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %79

157:                                              ; preds = %79
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @NREV_LT(i32 %161, i32 2)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @M_CURR_IDX1, align 4
  %171 = call i32 @wlapi_bmac_write_shm(i32 %169, i32 %170, i32 65535)
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @M_CURR_IDX2, align 4
  %178 = call i32 @wlapi_bmac_write_shm(i32 %176, i32 %177, i32 65535)
  br label %179

179:                                              ; preds = %164, %157
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %185, i32 0)
  br label %187

187:                                              ; preds = %184, %179
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
