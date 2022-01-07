; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_rate_priv = type { i64, i64*, i32, i64, i64*, i64, i64**, i64*, %struct.ath_rateset, %struct.ath_rate_table* }
%struct.ath_rateset = type { i32 }
%struct.ath_rate_table = type { i32 }
%struct.ath_common = type { i32 }

@RATE_TABLE_SIZE = common dso_local global i64 0, align 8
@WLAN_RC_PHY_MAX = common dso_local global i64 0, align 8
@WLAN_RC_HT_FLAG = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RC Initialized with capabilities: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rate_priv*)* @ath_rc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rc_init(%struct.ath_softc* %0, %struct.ath_rate_priv* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_rate_priv*, align 8
  %5 = alloca %struct.ath_rate_table*, align 8
  %6 = alloca %struct.ath_rateset*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_rate_priv* %1, %struct.ath_rate_priv** %4, align 8
  %13 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %13, i32 0, i32 9
  %15 = load %struct.ath_rate_table*, %struct.ath_rate_table** %14, align 8
  store %struct.ath_rate_table* %15, %struct.ath_rate_table** %5, align 8
  %16 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %16, i32 0, i32 8
  store %struct.ath_rateset* %17, %struct.ath_rateset** %6, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ath_common* @ath9k_hw_common(i32 %20)
  store %struct.ath_common* %21, %struct.ath_common** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load i64, i64* @RATE_TABLE_SIZE, align 8
  %23 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %42, %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %32, i32 0, i32 7
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %25

45:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %73, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @WLAN_RC_PHY_MAX, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @RATE_TABLE_SIZE, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %57 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %56, i32 0, i32 6
  %58 = load i64**, i64*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %46

76:                                               ; preds = %46
  %77 = load %struct.ath_rateset*, %struct.ath_rateset** %6, align 8
  %78 = getelementptr inbounds %struct.ath_rateset, %struct.ath_rateset* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %83 = call i64 @ath_rc_init_validrates(%struct.ath_rate_priv* %82)
  store i64 %83, i64* %11, align 8
  br label %100

84:                                               ; preds = %76
  %85 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %86 = call i64 @ath_rc_setvalid_rates(%struct.ath_rate_priv* %85, i32 1)
  store i64 %86, i64* %11, align 8
  %87 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %88 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WLAN_RC_HT_FLAG, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %95 = call i64 @ath_rc_setvalid_rates(%struct.ath_rate_priv* %94, i32 0)
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @max(i64 %97, i64 %98)
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %96, %81
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 1
  %103 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %104 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %108 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RATE_TABLE_SIZE, align 8
  %111 = icmp ugt i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @WARN_ON(i32 %112)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %114

114:                                              ; preds = %176, %100
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @WLAN_RC_PHY_MAX, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %179

118:                                              ; preds = %114
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %144, %118
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %122 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %120, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %119
  %129 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %130 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %129, i32 0, i32 6
  %131 = load i64**, i64*** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i64*, i64** %131, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %139 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %138, i32 0, i32 4
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  %143 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %137, i64* %143, align 8
  br label %144

144:                                              ; preds = %128
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %9, align 8
  br label %119

147:                                              ; preds = %119
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.ath_rate_table*, %struct.ath_rate_table** %5, align 8
  %150 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ath_rc_valid_phyrate(i64 %148, i32 %151, i32 1)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %147
  %155 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %156 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* %8, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %154, %147
  br label %176

163:                                              ; preds = %154
  %164 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %165 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %164, i32 0, i32 6
  %166 = load i64**, i64*** %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i64*, i64** %166, i64 %167
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = sub i64 %170, 1
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %175 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %174, i32 0, i32 5
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %163, %162
  %177 = load i64, i64* %8, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %8, align 8
  br label %114

179:                                              ; preds = %114
  %180 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %181 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @RATE_TABLE_SIZE, align 8
  %184 = icmp ugt i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @WARN_ON(i32 %185)
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* @RATE_TABLE_SIZE, align 8
  %189 = icmp ugt i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @WARN_ON(i32 %190)
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %194 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %196 = call i32 @ath_rc_sort_validrates(%struct.ath_rate_priv* %195)
  %197 = load i64, i64* %10, align 8
  %198 = icmp ugt i64 %197, 4
  br i1 %198, label %199, label %207

199:                                              ; preds = %179
  %200 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %201 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %200, i32 0, i32 4
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %10, align 8
  %204 = sub i64 %203, 4
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  br label %215

207:                                              ; preds = %179
  %208 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %209 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %208, i32 0, i32 4
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = sub i64 %211, 1
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  br label %215

215:                                              ; preds = %207, %199
  %216 = phi i64 [ %206, %199 ], [ %214, %207 ]
  %217 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %218 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %217, i32 0, i32 5
  store i64 %216, i64* %218, align 8
  %219 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %220 = load i32, i32* @CONFIG, align 4
  %221 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %222 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @ath_dbg(%struct.ath_common* %219, i32 %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %223)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i64 @ath_rc_init_validrates(%struct.ath_rate_priv*) #1

declare dso_local i64 @ath_rc_setvalid_rates(%struct.ath_rate_priv*, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath_rc_valid_phyrate(i64, i32, i32) #1

declare dso_local i32 @ath_rc_sort_validrates(%struct.ath_rate_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
