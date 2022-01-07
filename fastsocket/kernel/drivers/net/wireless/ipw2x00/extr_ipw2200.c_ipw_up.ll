; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_5__*, i32*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cmdlog = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error allocating %d command log entries.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_HW_RESTARTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to load firmware: %d\0A\00", align 1
@CFG_CUSTOM_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ipw_geos = common dso_local global %struct.TYPE_6__* null, align 8
@EEPROM_COUNTRY_CODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"SKU [%c%c%c] not recognized.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not set geography.\00", align 1
@STATUS_RF_KILL_SW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Radio disabled by module parameter.\0A\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"Radio Frequency Kill Switch is On:\0AKill switch must be turned off for wireless networking to work.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Configured device on count %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Device configuration failed: 0x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to config device on retry %d of %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Unable to initialize device after %d attempts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_up(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 10
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @libipw_networks_age(i32 %14, i64 %17)
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %221

31:                                               ; preds = %21
  %32 = load i32, i32* @cmdlog, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @cmdlog, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kcalloc(i32 %40, i32 4, i32 %41)
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %43, i32 0, i32 9
  store i32* %42, i32** %44, align 8
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @cmdlog, align 4
  %51 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %221

54:                                               ; preds = %39
  %55 = load i32, i32* @cmdlog, align 4
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %34, %31
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %213, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MAX_HW_RESTARTS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %216

64:                                               ; preds = %60
  %65 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %66 = call i32 @ipw_load(%struct.ipw_priv* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %221

73:                                               ; preds = %64
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %75 = call i32 @ipw_init_ordinals(%struct.ipw_priv* %74)
  %76 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CFG_CUSTOM_MAC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %84 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @eeprom_parse_mac(%struct.ipw_priv* %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %73
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %90 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %89, i32 0, i32 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %93, i32 %96, i32 %97)
  %99 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %100 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %99, i32 0, i32 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %105 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32 %103, i32 %106, i32 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %130, %88
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipw_geos, align 8
  %112 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %116 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipw_geos, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memcmp(i32* %119, i32 %125, i32 3)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %114
  br label %133

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %109

133:                                              ; preds = %128, %109
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipw_geos, align 8
  %136 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %135)
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %133
  %139 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %140 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %143 = add i64 %142, 0
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %147 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %146, i32 0, i32 6
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %150 = add i64 %149, 1
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %154 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @EEPROM_COUNTRY_CODE, align 8
  %157 = add i64 %156, 2
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @IPW_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %152, i32 %159)
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %138, %133
  %162 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %163 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipw_geos, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = call i64 @libipw_set_geo(i32 %164, %struct.TYPE_6__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = call i32 (i8*, ...) @IPW_WARNING(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %221

173:                                              ; preds = %161
  %174 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %175 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = call i32 (i8*, ...) @IPW_WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %221

182:                                              ; preds = %173
  %183 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %184 = call i64 @rf_kill_active(%struct.ipw_priv* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = call i32 (i8*, ...) @IPW_WARNING(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0))
  %188 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %189 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %188, i32 0, i32 4
  %190 = load i32, i32* @HZ, align 4
  %191 = mul nsw i32 2, %190
  %192 = call i32 @schedule_delayed_work(i32* %189, i32 %191)
  store i32 0, i32* %2, align 4
  br label %221

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %196 = call i32 @ipw_config(%struct.ipw_priv* %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  %202 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %203 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %202, i32 0, i32 3
  %204 = call i32 @schedule_delayed_work(i32* %203, i32 0)
  store i32 0, i32* %2, align 4
  br label %221

205:                                              ; preds = %194
  %206 = load i32, i32* %4, align 4
  %207 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @MAX_HW_RESTARTS, align 4
  %210 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %209)
  %211 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %212 = call i32 @ipw_down(%struct.ipw_priv* %211)
  br label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %60

216:                                              ; preds = %60
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @EIO, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %216, %199, %186, %180, %171, %69, %49, %28
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @libipw_networks_age(i32, i64) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*, i32) #1

declare dso_local i32 @ipw_load(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_init_ordinals(%struct.ipw_priv*) #1

declare dso_local i32 @eeprom_parse_mac(%struct.ipw_priv*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @IPW_WARNING(i8*, ...) #1

declare dso_local i64 @libipw_set_geo(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @rf_kill_active(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @ipw_config(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32, ...) #1

declare dso_local i32 @ipw_down(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
