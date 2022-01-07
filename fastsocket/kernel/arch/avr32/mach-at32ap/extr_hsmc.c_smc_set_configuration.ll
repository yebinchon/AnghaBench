; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_smc_set_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_smc_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_config = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@hsmc = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NR_CHIP_SELECTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NWE_SETUP = common dso_local global i32 0, align 4
@NCS_WR_SETUP = common dso_local global i32 0, align 4
@NRD_SETUP = common dso_local global i32 0, align 4
@NCS_RD_SETUP = common dso_local global i32 0, align 4
@NWE_PULSE = common dso_local global i32 0, align 4
@NCS_WR_PULSE = common dso_local global i32 0, align 4
@NRD_PULSE = common dso_local global i32 0, align 4
@NCS_RD_PULSE = common dso_local global i32 0, align 4
@NWE_CYCLE = common dso_local global i32 0, align 4
@NRD_CYCLE = common dso_local global i32 0, align 4
@DBW = common dso_local global i32 0, align 4
@HSMC_DBW_8_BITS = common dso_local global i64 0, align 8
@HSMC_DBW_16_BITS = common dso_local global i64 0, align 8
@HSMC_DBW_32_BITS = common dso_local global i64 0, align 8
@EXNW_MODE = common dso_local global i32 0, align 4
@HSMC_EXNW_MODE_DISABLED = common dso_local global i64 0, align 8
@HSMC_EXNW_MODE_RESERVED = common dso_local global i64 0, align 8
@HSMC_EXNW_MODE_FROZEN = common dso_local global i64 0, align 8
@HSMC_EXNW_MODE_READY = common dso_local global i64 0, align 8
@TDF_CYCLES = common dso_local global i32 0, align 4
@READ_MODE = common dso_local global i32 0, align 4
@WRITE_MODE = common dso_local global i32 0, align 4
@BAT = common dso_local global i32 0, align 4
@TDF_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"smc cs%d: setup/%08x pulse/%08x cycle/%08x mode/%08x\0A\00", align 1
@SETUP0 = common dso_local global i64 0, align 8
@PULSE0 = common dso_local global i64 0, align 8
@CYCLE0 = common dso_local global i64 0, align 8
@MODE0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_set_configuration(i32 %0, %struct.smc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.smc_config* %1, %struct.smc_config** %5, align 8
  %11 = load i32, i32* @hsmc, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %220

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NR_CHIP_SELECTS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %220

23:                                               ; preds = %16
  %24 = load i32, i32* @NWE_SETUP, align 4
  %25 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %26 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %25, i32 0, i32 16
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @HSMC_BF(i32 %24, i64 %27)
  %29 = load i32, i32* @NCS_WR_SETUP, align 4
  %30 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %31 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %30, i32 0, i32 15
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @HSMC_BF(i32 %29, i64 %32)
  %34 = or i32 %28, %33
  %35 = load i32, i32* @NRD_SETUP, align 4
  %36 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %37 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %36, i32 0, i32 14
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @HSMC_BF(i32 %35, i64 %38)
  %40 = or i32 %34, %39
  %41 = load i32, i32* @NCS_RD_SETUP, align 4
  %42 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %43 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %42, i32 0, i32 13
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @HSMC_BF(i32 %41, i64 %44)
  %46 = or i32 %40, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @NWE_PULSE, align 4
  %48 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %49 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %48, i32 0, i32 12
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @HSMC_BF(i32 %47, i64 %50)
  %52 = load i32, i32* @NCS_WR_PULSE, align 4
  %53 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %54 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @HSMC_BF(i32 %52, i64 %55)
  %57 = or i32 %51, %56
  %58 = load i32, i32* @NRD_PULSE, align 4
  %59 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %60 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @HSMC_BF(i32 %58, i64 %61)
  %63 = or i32 %57, %62
  %64 = load i32, i32* @NCS_RD_PULSE, align 4
  %65 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %66 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %65, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @HSMC_BF(i32 %64, i64 %67)
  %69 = or i32 %63, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @NWE_CYCLE, align 4
  %71 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %72 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @HSMC_BF(i32 %70, i64 %73)
  %75 = load i32, i32* @NRD_CYCLE, align 4
  %76 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %77 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @HSMC_BF(i32 %75, i64 %78)
  %80 = or i32 %74, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %82 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %96 [
    i32 1, label %84
    i32 2, label %88
    i32 4, label %92
  ]

84:                                               ; preds = %23
  %85 = load i32, i32* @DBW, align 4
  %86 = load i64, i64* @HSMC_DBW_8_BITS, align 8
  %87 = call i32 @HSMC_BF(i32 %85, i64 %86)
  store i32 %87, i32* %10, align 4
  br label %99

88:                                               ; preds = %23
  %89 = load i32, i32* @DBW, align 4
  %90 = load i64, i64* @HSMC_DBW_16_BITS, align 8
  %91 = call i32 @HSMC_BF(i32 %89, i64 %90)
  store i32 %91, i32* %10, align 4
  br label %99

92:                                               ; preds = %23
  %93 = load i32, i32* @DBW, align 4
  %94 = load i64, i64* @HSMC_DBW_32_BITS, align 8
  %95 = call i32 @HSMC_BF(i32 %93, i64 %94)
  store i32 %95, i32* %10, align 4
  br label %99

96:                                               ; preds = %23
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %220

99:                                               ; preds = %92, %88, %84
  %100 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %101 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %127 [
    i32 0, label %103
    i32 1, label %109
    i32 2, label %115
    i32 3, label %121
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @EXNW_MODE, align 4
  %105 = load i64, i64* @HSMC_EXNW_MODE_DISABLED, align 8
  %106 = call i32 @HSMC_BF(i32 %104, i64 %105)
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %130

109:                                              ; preds = %99
  %110 = load i32, i32* @EXNW_MODE, align 4
  %111 = load i64, i64* @HSMC_EXNW_MODE_RESERVED, align 8
  %112 = call i32 @HSMC_BF(i32 %110, i64 %111)
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %130

115:                                              ; preds = %99
  %116 = load i32, i32* @EXNW_MODE, align 4
  %117 = load i64, i64* @HSMC_EXNW_MODE_FROZEN, align 8
  %118 = call i32 @HSMC_BF(i32 %116, i64 %117)
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %130

121:                                              ; preds = %99
  %122 = load i32, i32* @EXNW_MODE, align 4
  %123 = load i64, i64* @HSMC_EXNW_MODE_READY, align 8
  %124 = call i32 @HSMC_BF(i32 %122, i64 %123)
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %130

127:                                              ; preds = %99
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %220

130:                                              ; preds = %121, %115, %109, %103
  %131 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %132 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* @TDF_CYCLES, align 4
  %137 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %138 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @HSMC_BF(i32 %136, i64 %139)
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %145 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @READ_MODE, align 4
  %150 = call i32 @HSMC_BIT(i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %155 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @WRITE_MODE, align 4
  %160 = call i32 @HSMC_BIT(i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %165 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @BAT, align 4
  %170 = call i32 @HSMC_BIT(i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.smc_config*, %struct.smc_config** %5, align 8
  %175 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @TDF_MODE, align 4
  %180 = call i32 @HSMC_BIT(i32 %179)
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = mul nsw i32 %190, 16
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %6, align 8
  %193 = load i32, i32* @hsmc, align 4
  %194 = load i64, i64* @SETUP0, align 8
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %194, %195
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @hsmc_writel(i32 %193, i64 %196, i32 %197)
  %199 = load i32, i32* @hsmc, align 4
  %200 = load i64, i64* @PULSE0, align 8
  %201 = load i64, i64* %6, align 8
  %202 = add i64 %200, %201
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @hsmc_writel(i32 %199, i64 %202, i32 %203)
  %205 = load i32, i32* @hsmc, align 4
  %206 = load i64, i64* @CYCLE0, align 8
  %207 = load i64, i64* %6, align 8
  %208 = add i64 %206, %207
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @hsmc_writel(i32 %205, i64 %208, i32 %209)
  %211 = load i32, i32* @hsmc, align 4
  %212 = load i64, i64* @MODE0, align 8
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %212, %213
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @hsmc_writel(i32 %211, i64 %214, i32 %215)
  %217 = load i32, i32* @hsmc, align 4
  %218 = load i64, i64* @MODE0, align 8
  %219 = call i32 @hsmc_readl(i32 %217, i64 %218)
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %183, %127, %96, %20, %13
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @HSMC_BF(i32, i64) #1

declare dso_local i32 @HSMC_BIT(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hsmc_writel(i32, i64, i32) #1

declare dso_local i32 @hsmc_readl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
