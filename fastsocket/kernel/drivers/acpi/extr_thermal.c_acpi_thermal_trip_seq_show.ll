; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_trip_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_trip_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_22__, i32, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"critical (S5):           %ld C%s\00", align 1
@nocrt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c" <disabled>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"hot (S4):                %ld C%s\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"passive:                 %ld C: tc1=%lu tc2=%lu tsp=%lu devices=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%4.4s \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"active[%d]:               %ld C: devices=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_thermal_trip_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_trip_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_thermal*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %11, align 8
  store %struct.acpi_thermal* %12, %struct.acpi_thermal** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %14 = icmp ne %struct.acpi_thermal* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %208

16:                                               ; preds = %2
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @KELVIN_TO_CELSIUS(i32 %30)
  %32 = load i64, i64* @nocrt, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %35)
  br label %37

37:                                               ; preds = %24, %16
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @KELVIN_TO_CELSIUS(i32 %51)
  %53 = load i64, i64* @nocrt, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %56)
  br label %58

58:                                               ; preds = %45, %37
  %59 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %58
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %69 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @KELVIN_TO_CELSIUS(i32 %72)
  %74 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %75 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %80 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %85 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %78, i32 %83, i32 %88)
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %121, %66
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %91, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %90
  %100 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @acpi_bus_get_device(i32 %109, %struct.acpi_device** %6)
  store i64 %110, i64* %7, align 8
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %118

115:                                              ; preds = %99
  %116 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %117 = call i8* @acpi_device_bid(%struct.acpi_device* %116)
  br label %118

118:                                              ; preds = %115, %114
  %119 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %114 ], [ %117, %115 ]
  %120 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %90

124:                                              ; preds = %90
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = call i32 @seq_puts(%struct.seq_file* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %58
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %204, %127
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %207

132:                                              ; preds = %128
  %133 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %134 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %132
  br label %207

145:                                              ; preds = %132
  %146 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %149 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @KELVIN_TO_CELSIUS(i32 %156)
  %158 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %146, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %157)
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %198, %145
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %162 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %160, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %159
  %173 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %174 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @acpi_bus_get_device(i32 %186, %struct.acpi_device** %6)
  store i64 %187, i64* %7, align 8
  %188 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %172
  br label %195

192:                                              ; preds = %172
  %193 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %194 = call i8* @acpi_device_bid(%struct.acpi_device* %193)
  br label %195

195:                                              ; preds = %192, %191
  %196 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %191 ], [ %194, %192 ]
  %197 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %159

201:                                              ; preds = %159
  %202 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %203 = call i32 @seq_puts(%struct.seq_file* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %128

207:                                              ; preds = %144, %128
  br label %208

208:                                              ; preds = %207, %15
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @KELVIN_TO_CELSIUS(i32) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i8* @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
