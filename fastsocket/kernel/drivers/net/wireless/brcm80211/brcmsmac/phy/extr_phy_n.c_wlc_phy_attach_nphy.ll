; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_attach_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_attach_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@BFL2_SPUR_WAR = common dso_local global i32 0, align 4
@BFL2_2G_SPUR_WAR = common dso_local global i32 0, align 4
@AUTO = common dso_local global i8* null, align 8
@BRCMS_N_PREAMBLE_MIXEDMODE = common dso_local global i8* null, align 8
@PHY_PERICAL_MPHASE = common dso_local global i32 0, align 4
@MPHASE_CAL_STATE_IDLE = common dso_local global i32 0, align 4
@MPHASE_TXCAL_NUMCMDS = common dso_local global i32 0, align 4
@PHY_TPC_HW_ON = common dso_local global i64 0, align 8
@wlc_phy_init_nphy = common dso_local global i32 0, align 4
@wlc_phy_cal_init_nphy = common dso_local global i32 0, align 4
@wlc_phy_chanspec_set_nphy = common dso_local global i32 0, align 4
@wlc_phy_txpower_recalc_target_nphy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_attach_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 12
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @NREV_GE(i32 %8, i32 3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @NREV_LT(i32 %15, i32 6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %11, %1
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 12
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @NREV_GE(i32 %25, i32 3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @NREV_LT(i32 %32, i32 7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 19
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BFL2_SPUR_WAR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49, %28, %21
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 12
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @NREV_GE(i32 %54, i32 6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 12
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @NREV_LT(i32 %61, i32 7)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 19
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BFL2_2G_SPUR_WAR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %64
  br label %77

77:                                               ; preds = %76, %57, %50
  %78 = load i8*, i8** @AUTO, align 8
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 18
  store i8* %78, i8** %80, align 8
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @NREV_IS(i32 %84, i32 3)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %89 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @NREV_IS(i32 %91, i32 4)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87, %77
  %95 = load i8*, i8** @BRCMS_N_PREAMBLE_MIXEDMODE, align 8
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 18
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i8*, i8** @AUTO, align 8
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %100, i32 0, i32 17
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @AUTO, align 8
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 16
  store i8* %102, i8** %104, align 8
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %106 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %105, i32 0, i32 4
  store i32 16842933, i32* %106, align 8
  %107 = load i32, i32* @PHY_PERICAL_MPHASE, align 4
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 15
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @MPHASE_CAL_STATE_IDLE, align 4
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @MPHASE_TXCAL_NUMCMDS, align 4
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 8
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 5
  store i32 1, i32* %117, align 4
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 6
  store i32 0, i32* %119, align 8
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 7
  store i32 0, i32* %121, align 4
  store i64 0, i64* %4, align 8
  br label %122

122:                                              ; preds = %137, %98
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %125 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %124, i32 0, i32 12
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i8*, i8** @AUTO, align 8
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %131, i32 0, i32 11
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i8* %130, i8** %136, align 8
  br label %137

137:                                              ; preds = %129
  %138 = load i64, i64* %4, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %4, align 8
  br label %122

140:                                              ; preds = %122
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = call i32 @wlc_phy_txpwrctrl_config_nphy(%struct.brcms_phy* %141)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PHY_TPC_HW_ON, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 9
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i32, i32* @wlc_phy_init_nphy, align 4
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 10
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @wlc_phy_cal_init_nphy, align 4
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @wlc_phy_chanspec_set_nphy, align 4
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %162 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %161, i32 0, i32 10
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @wlc_phy_txpower_recalc_target_nphy, align 4
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 10
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %169 = call i32 @wlc_phy_txpwr_srom_read_nphy(%struct.brcms_phy* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %173

172:                                              ; preds = %151
  store i32 1, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %171
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_txpwrctrl_config_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwr_srom_read_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
