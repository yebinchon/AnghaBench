; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_cooling_device_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_cooling_device_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }

@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)*)* @acpi_thermal_cooling_device_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_cooling_device_cb(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)* %2) #0 {
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.acpi_thermal*, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  store i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)* %2, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)** %6, align 8
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %17 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %16, i32 0, i32 0
  %18 = load %struct.acpi_device*, %struct.acpi_device** %17, align 8
  store %struct.acpi_device* %18, %struct.acpi_device** %7, align 8
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 0
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %20, align 8
  store %struct.acpi_thermal* %21, %struct.acpi_thermal** %8, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %45 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %94, %51
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %57 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %54
  %64 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %65 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @acpi_bus_get_device(i32 %74, %struct.acpi_device** %9)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @ACPI_SUCCESS(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %63
  %80 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %81 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %82 = icmp eq %struct.acpi_device* %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)** %6, align 8
  %85 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %88 = call i32 %84(%struct.thermal_zone_device* %85, i32 %86, %struct.thermal_cooling_device* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %214

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %79, %63
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %54

97:                                               ; preds = %54
  br label %98

98:                                               ; preds = %97, %43
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %171, %98
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %174

103:                                              ; preds = %99
  %104 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %105 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  br label %174

116:                                              ; preds = %103
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %167, %116
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %122 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %120, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %119
  %133 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %134 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @acpi_bus_get_device(i32 %147, %struct.acpi_device** %9)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i64 @ACPI_SUCCESS(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %132
  %153 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %154 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %155 = icmp eq %struct.acpi_device* %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)** %6, align 8
  %158 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %161 = call i32 %157(%struct.thermal_zone_device* %158, i32 %159, %struct.thermal_cooling_device* %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %214

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %152, %132
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %119

170:                                              ; preds = %119
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %99

174:                                              ; preds = %115, %99
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %210, %174
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %178 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %175
  %183 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %184 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @acpi_bus_get_device(i32 %191, %struct.acpi_device** %9)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i64 @ACPI_SUCCESS(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %182
  %197 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %198 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %199 = icmp eq %struct.acpi_device* %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*)** %6, align 8
  %202 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %203 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %204 = call i32 %201(%struct.thermal_zone_device* %202, i32 -1, %struct.thermal_cooling_device* %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %214

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208, %196, %182
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %175

213:                                              ; preds = %175
  br label %214

214:                                              ; preds = %213, %207, %164, %91
  %215 = load i32, i32* %15, align 4
  ret i32 %215
}

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
