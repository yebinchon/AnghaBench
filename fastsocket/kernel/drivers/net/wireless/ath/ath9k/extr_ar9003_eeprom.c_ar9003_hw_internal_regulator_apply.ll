; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_internal_regulator_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_internal_regulator_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_base_eep_hdr }
%struct.ar9300_base_eep_hdr = type { i32, i32 }

@AR_PHY_PMU2 = common dso_local global i32 0, align 4
@AR_PHY_PMU2_PGM = common dso_local global i32 0, align 4
@AR_PHY_PMU1 = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1 = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL1_SWREG_PROGRAM = common dso_local global i32 0, align 4
@AR_RTC_REG_CONTROL0 = common dso_local global i32 0, align 4
@AR_PHY_PMU1_PWD = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_SWREG_PRD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_internal_regulator_apply(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar9300_eeprom*, align 8
  %4 = alloca %struct.ar9300_base_eep_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %3, align 8
  %10 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %3, align 8
  %11 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %10, i32 0, i32 0
  store %struct.ar9300_base_eep_hdr* %11, %struct.ar9300_base_eep_hdr** %4, align 8
  %12 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 4)
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %145

18:                                               ; preds = %1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = call i64 @AR_SREV_9330(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = call i64 @AR_SREV_9485(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %22, %18
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = load i32, i32* @AR_PHY_PMU2, align 4
  %29 = call i32 @REG_READ(%struct.ath_hw* %27, i32 %28)
  %30 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @AR_PHY_PMU2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_PHY_PMU2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @is_pmu_set(%struct.ath_hw* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %220

43:                                               ; preds = %26
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = call i64 @AR_SREV_9330(%struct.ath_hw* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 52183942, i32* %6, align 4
  br label %54

53:                                               ; preds = %47
  store i32 52183928, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %56

55:                                               ; preds = %43
  store i32 320635514, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_PHY_PMU1, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = load i32, i32* @AR_PHY_PMU1, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @is_pmu_set(%struct.ath_hw* %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %220

67:                                               ; preds = %56
  %68 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %69 = load i32, i32* @AR_PHY_PMU2, align 4
  %70 = call i32 @REG_READ(%struct.ath_hw* %68, i32 %69)
  %71 = and i32 %70, 4194303
  %72 = or i32 %71, 268435456
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = load i32, i32* @AR_PHY_PMU2, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %78 = load i32, i32* @AR_PHY_PMU2, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @is_pmu_set(%struct.ath_hw* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  br label %220

83:                                               ; preds = %67
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = load i32, i32* @AR_PHY_PMU2, align 4
  %86 = call i32 @REG_READ(%struct.ath_hw* %84, i32 %85)
  %87 = and i32 %86, -2097153
  %88 = or i32 %87, 2097152
  store i32 %88, i32* %6, align 4
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = load i32, i32* @AR_PHY_PMU2, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = load i32, i32* @AR_PHY_PMU2, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @is_pmu_set(%struct.ath_hw* %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %220

99:                                               ; preds = %83
  br label %144

100:                                              ; preds = %22
  %101 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %102 = call i64 @AR_SREV_9462(%struct.ath_hw* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %106 = call i64 @AR_SREV_9565(%struct.ath_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104, %100
  %109 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %110 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %114 = load i32, i32* @AR_PHY_PMU1, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @REG_WRITE(%struct.ath_hw* %113, i32 %114, i32 %115)
  br label %143

117:                                              ; preds = %104
  %118 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %119 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %123 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %124 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %125 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %126 = call i32 @REG_READ(%struct.ath_hw* %124, i32 %125)
  %127 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = call i32 @REG_WRITE(%struct.ath_hw* %122, i32 %123, i32 %129)
  %131 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %132 = load i32, i32* @AR_RTC_REG_CONTROL0, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @REG_WRITE(%struct.ath_hw* %131, i32 %132, i32 %133)
  %135 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %136 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %137 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %138 = load i32, i32* @AR_RTC_REG_CONTROL1, align 4
  %139 = call i32 @REG_READ(%struct.ath_hw* %137, i32 %138)
  %140 = load i32, i32* @AR_RTC_REG_CONTROL1_SWREG_PROGRAM, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @REG_WRITE(%struct.ath_hw* %135, i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %117, %108
  br label %144

144:                                              ; preds = %143, %99
  br label %220

145:                                              ; preds = %1
  %146 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %147 = call i64 @AR_SREV_9330(%struct.ath_hw* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %151 = call i64 @AR_SREV_9485(%struct.ath_hw* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %149, %145
  %154 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %155 = load i32, i32* @AR_PHY_PMU2, align 4
  %156 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %157 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %154, i32 %155, i32 %156, i32 0)
  br label %158

158:                                              ; preds = %164, %153
  %159 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %160 = load i32, i32* @AR_PHY_PMU2, align 4
  %161 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %162 = call i64 @REG_READ_FIELD(%struct.ath_hw* %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = call i32 @udelay(i32 10)
  br label %158

166:                                              ; preds = %158
  %167 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %168 = load i32, i32* @AR_PHY_PMU1, align 4
  %169 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %170 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %167, i32 %168, i32 %169, i32 1)
  br label %171

171:                                              ; preds = %178, %166
  %172 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %173 = load i32, i32* @AR_PHY_PMU1, align 4
  %174 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %175 = call i64 @REG_READ_FIELD(%struct.ath_hw* %172, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = call i32 @udelay(i32 10)
  br label %171

180:                                              ; preds = %171
  %181 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %182 = load i32, i32* @AR_PHY_PMU2, align 4
  %183 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %184 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %181, i32 %182, i32 %183, i32 1)
  br label %185

185:                                              ; preds = %192, %180
  %186 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %187 = load i32, i32* @AR_PHY_PMU2, align 4
  %188 = load i32, i32* @AR_PHY_PMU2_PGM, align 4
  %189 = call i64 @REG_READ_FIELD(%struct.ath_hw* %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = call i32 @udelay(i32 10)
  br label %185

194:                                              ; preds = %185
  br label %219

195:                                              ; preds = %149
  %196 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %197 = call i64 @AR_SREV_9462(%struct.ath_hw* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %201 = call i64 @AR_SREV_9565(%struct.ath_hw* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199, %195
  %204 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %205 = load i32, i32* @AR_PHY_PMU1, align 4
  %206 = load i32, i32* @AR_PHY_PMU1_PWD, align 4
  %207 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %204, i32 %205, i32 %206, i32 1)
  br label %218

208:                                              ; preds = %199
  %209 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %210 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %211 = call i32 @REG_READ(%struct.ath_hw* %209, i32 %210)
  %212 = load i32, i32* @AR_RTC_FORCE_SWREG_PRD, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %5, align 4
  %214 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %215 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @REG_WRITE(%struct.ath_hw* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %208, %203
  br label %219

219:                                              ; preds = %218, %194
  br label %220

220:                                              ; preds = %42, %66, %82, %98, %219, %144
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @is_pmu_set(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
